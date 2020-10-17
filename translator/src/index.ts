import { promises as fs } from "fs";
import { promisify } from "util";
import path from "path";
import globNoPromise from "glob";
import ora from "ora";

import { parseFile, bootstrap } from "./translate";

const glob = promisify(globNoPromise);

const spinner = ora("loading file").start();
const main = async () => {
  const arg = process.argv.slice(2)[0];

  if (!arg) {
    console.error(
      "please provide the file you want to translate as the first argument."
    );
    process.exit(1);
  }

  let fileName: string;
  let assembly: string;
  if (arg.endsWith(".vm")) {
    fileName = arg.replace(".vm", "");
    spinner.text = "processing file";
    assembly = await processSingleFile(arg);
  } else {
    fileName = path.join(arg, arg.split("/").slice(-1)[0]);
    spinner.text = "processing folder";
    assembly = await processFolder(arg);
  }
  spinner.succeed();

  spinner.text = "writing to file";
  await fs.writeFile(
    path.join(process.cwd(), `${fileName}.asm`),
    assembly,
    "utf8"
  );

  spinner.succeed(`writing new file to ${fileName}.asm`);
};

const processSingleFile = async (arg: string) => {
  const file = await fs.readFile(path.join(process.cwd(), arg), "utf8");
  const assembly = parseFile(file);
  return assembly;
};

const processFolder = async (arg: string) => {
  const files = await glob("*.vm", { cwd: path.join(process.cwd(), arg) });

  const data = await Promise.all(
    files.map(async (file) => {
      return fs.readFile(path.join(process.cwd(), arg, file), "utf8");
    })
  );

  return `${bootstrap()}\n${data.map((data) => parseFile(data)).join("\n")}`;
};

main().catch((e: Error) => spinner.fail(e.message));

import { promises as fs } from "fs";
import path from "path";
import ora from "ora";
import { parseFile } from "./translate";

const spinner = ora("loading file").start();
const main = async () => {
  const arg = process.argv.slice(2)[0];

  if (!arg) {
    console.error(
      "please provide the file you want to translate as the first argument."
    );
    process.exit(1);
  }

  let fileName = arg.replace(".vm", "");

  const file = await fs.readFile(path.resolve(process.cwd(), arg), "utf8");
  spinner.succeed();

  const assembly = parseFile(file);

  spinner.text = "writing to file";
  await fs.writeFile(
    path.resolve(process.cwd(), `${fileName}.asm`),
    assembly,
    "utf8"
  );

  spinner.succeed(`writing new file to ${fileName}.asm`);
};

main().catch((e: Error) => spinner.fail(e.message));

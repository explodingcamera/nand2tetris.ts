import { promises as fs } from "fs";
import path from "path";
import ora from 'ora'

import { parseOperations, parseSymbols } from "./parse";
import { insertSymbols, generateBytecode } from "./assembler";

const spinner = ora("loading file").start();
const main = async () => {
  const arg = process.argv.slice(2)[0];

  if (!arg) {
    spinner.fail(
      "please provide the file you want to assemble as the first argument."
    );
    process.exit(1);
  }

  let fileName = arg.replace(".asm", "");


  const file = await fs.readFile(path.resolve(process.cwd(), arg), "utf8");
  spinner.succeed();

  spinner.start('extracting operations')
  let operations = parseOperations(file);
  spinner.succeed()

  spinner.start('parsing symbols')
  const symbols = parseSymbols(operations);
  spinner.succeed()

  spinner.start('inserting symbols')
  operations = insertSymbols(operations, symbols);
  spinner.succeed()

  spinner.text = 'generating bytecode'
  const bytecode = generateBytecode(operations);

  spinner.text = 'writing to file'
  await fs.writeFile(path.resolve(process.cwd(), `${fileName}.hack`), bytecode, "utf8")

  spinner.succeed(`writing new file to ${fileName}.hack`)
};


main().catch((e: Error) => spinner.fail(e.message));

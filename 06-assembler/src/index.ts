import { promises as fs } from "fs";
import path from "path";

import { parseOperations, parseSymbols } from "./parse";
import { assemble } from "./assembler";

const main = async () => {
  const arg = process.argv.slice(2)[0];

  if (!arg) {
    console.error(
      "please provide the file you want to assemble as the first argument."
    );
    process.exit(1);
  }

  let fileName = arg.replace(".asm", "");

  const file = await fs.readFile(path.resolve(process.cwd(), arg), "utf8");

  const operations = parseOperations(file);
  const symbols = parseSymbols(operations);

  console.log(symbols);

  const bytecode = assemble(operations, symbols);

  // console.log(bytecode)
};

main().catch((e) => console.error(e));
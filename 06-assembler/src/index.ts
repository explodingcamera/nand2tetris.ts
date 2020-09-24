import { promises as fs } from "fs";
import path from "path";

import { parseOperations, parseSymbols } from "./parse";
import { insertSymbols, generateBytecode } from "./assembler";

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

  let operations = parseOperations(file);
  const symbols = parseSymbols(operations);
  operations = insertSymbols(operations, symbols);
  const bytecode = generateBytecode(operations);
  await fs.writeFile(path.resolve(process.cwd(), `${fileName}.hack`), bytecode, "utf8")

  console.log(`Successfully written to ${fileName}.hack`)
};

main().catch((e) => console.error(e));

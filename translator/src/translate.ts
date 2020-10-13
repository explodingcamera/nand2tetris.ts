import crypto from "crypto";
import data from "./../data/instructions.json";

import * as flow from "./flow"
import * as memory from "./memory";
import * as arithmetic from "./arithmetic"

// type command = "push" | "pop"; //| "label" | "goto" | "if-goto" | "call" | "return" | "function"

export enum Commands {
  // memory
  PUSH = "PUSH",
  POP = "POP",

  // arithmetic
  NOT = "NOT",
  NEG = "NEG",
  ADD = "ADD",
  SUB = "SUB",
  AND = "AND",
  OR = "OR",

  // flow
  IF = "IF",
  RETURN = "RETURN",
  LABEL = "LABEL",
  FUNCTION = "FUNCTION" 
}

export const parseFile = (file: string) =>
  file
    // convert line-endings to dos-style for compatibility
    .replace(/\r?\n/g, "\r\n")
    // remove comments
    .replace(/(\/\/).*|\)/g, "")
    // remove empty lines
    .replace(/^\s*\n/gm, "")
    .trim()
    // split into seperate instructions
    .split("\r")
    .map((line, index, lines) =>
      // we're using hashes as labels to ensure uniqueness across files
      parseLine({
        line,
        index,
        lines,
        hash: crypto.createHash("sha256").update(file).digest("hex")
      })
    )
    .join("\n");

const findLastFunction = (currentIndex: number, lines: string[]) =>
  lines[
    lines
      .slice(0, currentIndex)
      .map((line) => line.startsWith("function"))
      .lastIndexOf(true)
  ].split(" ")[1];

export type Command = ({
  segment,
  index,
  hash,
  currentLine,
  findLastFunction,
}: {
  segment: string,
  index: string,
  hash?: string,
  currentLine: number,
  findLastFunction: () => string
}) => string

export const parseLine = ({
  line,
  index,
  lines,
  hash,
}: {
  line: string;
  index: number;
  lines: string[];
  hash: string;
}) => {
  const instruction = line.split(" ");

  const command = instruction[0].replace("if-goto", "if").toLocaleUpperCase() as Commands
  
  if (!Object.values(Commands).includes(command))
    throw new Error("invalid command: " + instruction[0]);

  const asm = { ...memory, ...arithmetic, ...flow }[command]({
    segment: instruction[1],
    index: instruction[2],
    currentLine: index,
    hash,
    findLastFunction: () => findLastFunction(index, lines)
  });

  return asm.split("\n").map(a=>a.padEnd(8, " ") + `// line ${index}, instruction: ${line}`).join("\n")
};

const bootstrap = `@256
D=A
@SP
M=D`;

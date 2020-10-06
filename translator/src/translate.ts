import crypto from "crypto";
import data from "./../data/instructions.json"

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
      parseLine(line, index, lines, crypto.createHash("sha256").update(file).digest("hex"))
    )
    .join("\n")

const findLastFunction = (currentIndex: number, lines: string[]) =>
  lines[
    lines
    .slice(0, currentIndex)
    .map(line => line.startsWith("function"))
    .lastIndexOf(true)
  ].split(" ")[1]

export const parseLine = (line: string, index: number, lines: string[], hash: string) => {
  const instruction = line.split(" ")

  if (["push", "pop"].some(i => i === instruction[0])) 
  if (["label", "goto", 'if-goto'].some(i => i === instruction[0])) findLastFunction(index, lines)
  if (['call', 'return', 'function'].some(i => i === instruction[0])) 

  throw new Error("invalid instruction: " + instruction[0]);
};

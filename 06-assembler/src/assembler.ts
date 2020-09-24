import data from "./../data/translation.json";
import { Symbols } from "./parse";
const { computation, jump, destination } = data as {[x: string]: {[x: string]: string}};

export const insertSymbols = (
  operations: string[],
  symbols: Symbols
): string[] => {

  const insertSymbol = (s: string) => (op: string): string =>
    op.startsWith(s) && symbols.hasOwnProperty(op.slice(1))
      ? s + symbols[op.slice(1) as any]
      : op;

  return operations.map(insertSymbol("@")).map(insertSymbol("("));
};

export const generateBytecode = (operations: string[]): string =>
  operations.map((op) => {
    // A-Operation
    if (op.startsWith("@")) {
      let addr = parseInt(op.replace("@", ''));
      let bin = addr.toString(2)
      return bin.padStart(16, "0")
    }

    // C-Operation
    let c: string, d: string = "", j: string = "";
    if (op.includes("=")) {
      let [leftSide, rightSide] = op.split("=");
      if(!destination.hasOwnProperty(leftSide)) throw new Error("invalid destination:"+op);
      if(!computation.hasOwnProperty(rightSide)) throw new Error("invalid computation:"+op);
      c = computation[rightSide]
      d = destination[leftSide]
    } else if (op.includes(";")) {
      let [leftSide, rightSide] = op.split(";");
      if(!destination.hasOwnProperty(leftSide)) throw new Error("invalid jump destination:"+op);
      if(!jump.hasOwnProperty(rightSide)) throw new Error("invalid jump type:"+op);
      c = destination[leftSide]
      j = jump[rightSide]
    } else {
      if (op.includes("(")) {
        throw new Error("lables are not supported (yet :p): "+op+")");
      }
  
      throw new Error("invalid operation:"+op);
    }

    return `111${[c, d, j].map(v => v.padStart(3, "0")).join("")}`
  }).join("\n")
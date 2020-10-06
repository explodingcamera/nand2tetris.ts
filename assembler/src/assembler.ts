import { Symbols } from "./parse";

import data from "./../data/translation.json";
const { computation, jump, destination } = data as {
  [x: string]: { [x: string]: string };
};

export const insertSymbols = (
  operations: string[],
  symbols: Symbols
): string[] => {
  const insertSymbol = (s: string) => (op: string): string =>
    op.startsWith(s) && symbols.hasOwnProperty(op.slice(1))
      ? s + symbols[op.slice(1)]
      : op;

  return operations.map(insertSymbol("@")).map(insertSymbol("("));
};

export const generateBytecode = (operations: string[]): string =>
  operations
    // strip labels from the final output
    .filter((op) => !op.includes("("))
    .map((op) => {
      /**
       * A-Operations
       */
      if (op.startsWith("@")) {
        let addr = parseInt(op.replace("@", ""));
        let bin = addr.toString(2);
        return bin.padStart(16, "0");
      }

      /**
       * C-Operations
       */
      let c: string = "000",
        d: string = "000",
        j: string = "000";

      if (op.includes("=")) {
        // handle reassignments
        let [leftSide, rightSide] = op.split("=");

        if (!destination.hasOwnProperty(leftSide))
          throw new Error("invalid destination:" + op);
        if (!computation.hasOwnProperty(rightSide))
          throw new Error("invalid computation:" + op);

        c = computation[rightSide];
        d = destination[leftSide];

      } else {
        if (!op.includes(";")) throw new Error("invalid operation:" + op);

        // handle jumps
        let [leftSide, rightSide] = op.split(";");
       
        if (!computation.hasOwnProperty(leftSide))
          throw new Error("invalid jump destination:" + op);
        if (!jump.hasOwnProperty(rightSide))
          throw new Error("invalid jump type:" + op);

        c = computation[leftSide];
        j = jump[rightSide];
      }

      return `111${[c, d, j].join("")}`;
    })
    .join("\n");

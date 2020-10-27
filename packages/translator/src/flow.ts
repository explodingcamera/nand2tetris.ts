import data from "./../data/instructions.json";
import { Command } from "./translate";

import { updateAddress } from "./memory";

const pushVal = (addr: string) => `@${addr}
${
  Object.values(data.memory.symbols).some((symbol) => symbol === addr)
    ? "D=M"
    : "D=A"
}
${data.memory.push}`;

const setVar = ({ offset, target }: { offset: number; target: string }) => `@R13
D=M
@${offset}
A=D-A
D=M
@${target}
M=D`;

export const LABEL: Command = ({ segment, hash, findLastFunction }) =>
  `(${findLastFunction?.()}$${segment})`;

export const IF: Command = ({ segment, hash, findLastFunction }) => `${
  data.memory.pop
}
@${findLastFunction?.()}$${segment}
D;JNE`;

export const GOTO: Command = ({ segment, hash, findLastFunction }) =>
  `@${findLastFunction?.()}$${segment}\n0;JMP`;

export const FUNCTION: Command = ({ segment, index, hash }) =>
  `(${segment})${
    parseInt(index) > 0
      ? "\n" +
        Array(parseInt(index)).fill(
          `${updateAddress("0")}\n${data.memory.push}`
        ).join("\n")
      : ""
  }`;

export const CALL: Command = ({ segment, index, currentLine }) =>
  `${pushVal(
    `${segment}$RETURN$${currentLine}`
  )} // call ${segment}$RETURN$${currentLine}
${pushVal(data.memory.symbols.local)}
${pushVal(data.memory.symbols.argument)}
${pushVal(data.memory.symbols.this)}
${pushVal(data.memory.symbols.that)}
@${5 + parseInt(index)}
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@${segment}
0;JMP
(${segment}$RETURN$${currentLine})`;

export const RETURN: Command = () =>
  `@LCL
D=M
@R13
M=D
${setVar({ target: "R14", offset: 5 })}
${data.memory.pop}
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
${["THAT", "THIS", "ARG", "LCL"]
  .map((symbol, i) => setVar({ target: symbol, offset: i + 1 }))
  .join("\n")}
@R14
A=M
0;JMP`;

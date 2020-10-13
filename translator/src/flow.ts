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

const setVar = ({ offset, target }: { offset: string; target: number }) => `@R13
D=M
@${offset}
A=D-A
D=M
@${target}
M=D`;

export const LABEL: Command = ({ segment, hash, findLastFunction }) =>
  `(${hash}$${findLastFunction()}$${segment})`;

export const IF: Command = ({ segment, hash, findLastFunction }) => `${
  data.memory.pop
}
@${hash}$${findLastFunction()}$${segment}
0;JNE`;

export const GOTO: Command = ({ segment, hash, findLastFunction }) =>
  `@${hash}$${findLastFunction()}$${segment}\n0;JMP`;

export const FUNCTION: Command = ({ segment, index, hash }) =>
  `@${hash}$${segment}${
    parseInt(index) > 0 &&
    "\n" +
      Array(parseInt(index)).fill(`${updateAddress(0)}\n${data.memory.push}`)
  }`;

export const CALL: Command = ({ segment, index, hash, currentLine }) =>
  `${pushVal(`${hash}$${segment}$ret.$${currentLine}`)}
${Object.values(data.memory.symbols)
  .map((symbol) => pushVal(symbol))
  .join("\n")}
@${5 + parseInt(index)}
D=A
@SP
D=M-D
@ARG
M=D'
@SP
D=M
@LCL
M=D
@${segment}
0;JMP
(${hash}$${segment}$ret.$${currentLine})
`;

export const RETURN: Command = () =>
  `@LCL
D=M
@R13
M=D
${setVar({ offset: "R14", target: 5 })}
${data.memory.pop}
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
${Object.values(data.memory.symbols).map((symbol, i) =>
  setVar({ offset: symbol, target: i + 1 })
)}
@R14
A=M
0;JMP`;

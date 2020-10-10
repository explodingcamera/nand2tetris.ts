import data from "./../data/instructions.json";
import { Command } from "./translate";

const pop = () => `@SP
M=M-1
A=M`;

export const add: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.add}`;

export const sub: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.sub}`;

export const and: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.and}`;

export const or: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.or}`;

export const neg: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
${data.arithmetic.commands.neg}
@SP
M=M+1`;

export const not: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
${data.arithmetic.commands.not}
@SP
M=M+1`;

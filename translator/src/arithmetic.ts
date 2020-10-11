import data from "./../data/instructions.json";
import { Command } from "./translate";

export const ADD: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.add}`;

export const SUB: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.sub}`;

export const AND: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.and}`;

export const OR: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.or}`;

export const NEG: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
${data.arithmetic.commands.neg}
@SP
M=M+1`;

export const NOT: Command = ({ segment, index, hash }) =>
  `${data.arithmetic.pop}
${data.arithmetic.commands.not}
@SP
M=M+1`;

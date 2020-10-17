import data from "./../data/instructions.json";
import { Command } from "./translate";

export const ADD: Command = () =>
  [
    data.memory.pop,
    data.memory.popm,
    data.arithmetic.commands.add,
    data.memory.push,
  ].join("\n");

export const SUB: Command = () =>
  [
    data.memory.pop,
    data.memory.popm,
    data.arithmetic.commands.sub,
    data.memory.push,
  ].join("\n");

export const AND: Command = () =>
  [
    data.memory.pop,
    data.memory.popm,
    data.arithmetic.commands.and,
    data.memory.push,
  ].join("\n");

export const OR: Command = () =>
  [
    data.memory.pop,
    data.memory.popm,
    data.arithmetic.commands.or,
    data.memory.push,
  ].join("\n");

export const NEG: Command = () =>
  [data.memory.pop, data.arithmetic.commands.neg, data.memory.push].join("\n");

export const NOT: Command = () =>
  [data.memory.pop, data.arithmetic.commands.not, data.memory.push].join("\n");

export const EQ: Command = ({ currentLine, hash }) =>
  jump({ currentLine, hash, command: "eq" });
export const LT: Command = ({ currentLine, hash }) =>
  jump({ currentLine, hash, command: "lt" });
export const GT: Command = ({ currentLine, hash }) =>
  jump({ currentLine, hash, command: "gt" });

type jumpProps = {
  command: "eq" | "gt" | "lt";
  currentLine: number;
  hash?: string;
};

const compare = ({ command, currentLine, hash }: jumpProps) => `D=M-D
@${hash}$${currentLine}$TRUE
D;${data.flow.jump[command]}
D=0
@${hash}$${currentLine}$JMP$THEN
0;JMP
(${hash}$${currentLine}$JMP$TRUE)
D=-1
(${hash}$${currentLine}$JMP$THEN)`;

const jump = ({ command, currentLine, hash }: jumpProps) =>
  [
    data.memory.pop,
    data.memory.popm,
    compare({ command, currentLine, hash }),
    data.memory.push,
  ].join("\n");

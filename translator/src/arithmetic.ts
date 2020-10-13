import data from "./../data/instructions.json";
import { Command } from "./translate";

export const ADD: Command = () =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.add}`;

export const SUB: Command = () =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.sub}`;

export const AND: Command = () =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.and}`;

export const OR: Command = () =>
  `${data.arithmetic.pop}
D=M
A=A-1
${data.arithmetic.commands.or}`;

export const NEG: Command = () =>
  `${data.arithmetic.pop}
${data.arithmetic.commands.neg}
@SP
M=M+1`;

export const NOT: Command = () =>
  `${data.arithmetic.pop}
${data.arithmetic.commands.not}
@SP
M=M+1`;

export const EQ: Command = ({currentLine, hash}) => jump({currentLine, hash, command: "eq"})
export const LT: Command = ({currentLine, hash}) => jump({currentLine, hash, command: "lt"})
export const GT: Command = ({currentLine, hash}) => jump({currentLine, hash, command: "gt"})

type jumpProps = {command: 'eq'|'gt'|'lt', currentLine: number, hash?: string}

const compare = ({command, currentLine, hash}:jumpProps ) => `D=M-D
@${hash}$${currentLine}$TRUE
D;${data.flow.jump[command]}
'D=0',
@${hash}$${currentLine}$JMP$THEN
0;JMP
(${hash}$${currentLine}$JMP$TRUE)
D=-1
(${hash}$${currentLine}$JMP$THEN)
`

const jump = ({command, currentLine, hash}: jumpProps) =>
  `${data.arithmetic.pop}
D=M
${data.arithmetic.pop}
${compare({command, currentLine, hash})}
${data.memory.push}`;

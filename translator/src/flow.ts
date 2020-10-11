import data from "./../data/instructions.json";
import { Command } from "./translate";

import { updateAddress } from "./memory";

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

export const RETURN: Command = () => {throw new Error("Not Implemented")};
export const CALL: Command = () => {throw new Error("Not Implemented")};

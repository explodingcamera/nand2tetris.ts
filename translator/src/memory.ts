import data from "./../data/instructions.json";
import { Command } from "./translate";

export const updateAddress = (
  address: number | string,
  offset?: string
) => `@${address}
${Number.isNaN(address) ? "D=M" : "D=A"}${
  (offset &&
    `
@${offset}
A=D+A
D=M`) ||
  ""
}`;

const getAddress = (address: number | string, offset: string) => `@R13
${Number.isNaN(address) ? "D=M" : "D=A"}
@${offset}
A=M
M=D`;

const getAddressPointer = () => `@R13
A=M
M=D`;

export const PUSH: Command = ({ segment, index, hash }) => {
  switch (segment) {
    case "constant":
      return `${updateAddress(index)}\n${data.memory.push}`;
    case "temp":
      return `${updateAddress(data.memory.constants.temp, index)}\n${
        data.memory.push
      }`;
    case "pointer":
      return `${updateAddress(index === "0" ? "THIS" : "THAT")}\n${
        data.memory.push
      }`;
    case "static":
      return `${updateAddress(`${hash}.${index}`)}\n${data.memory.push}`;
    default:
      if (data.memory.symbols.hasOwnProperty(segment))
        return `${updateAddress((data.memory.symbols as any)[segment], index)}`;

      throw new Error("invalid push segment: " + segment);
  }
};

export const POP: Command = ({ segment, index, hash }) => {
  switch (segment) {
    case "temp":
      return `${getAddress(data.memory.constants.temp, index)}\n${
        data.memory.pop
      }\n${getAddressPointer()}`;
    case "pointer":
      return `${data.memory.pop}\n@${index === "0" ? "THIS" : "THAT"}\nM=D`;
    case "static":
      return `${data.memory.pop}\n@${`${hash}.${index}`}\nM=D`;
    default:
      if (data.memory.symbols.hasOwnProperty(segment))
        return `${getAddress((data.memory.symbols as any)[segment], index)}\n${
          data.memory.pop
        }\n${getAddressPointer()}`;
      throw new Error("invalid pop segment: " + segment);
  }
};

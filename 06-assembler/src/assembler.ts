import { computation, jump, destination } from "./../data/translation.json";

export const assemble = (
  operations: string[],
  symbols: {
    [x: string]: number;
  }
): string => {

  const ops = operations
    .map((op) =>
      op.startsWith("@") && symbols.hasOwnProperty(op.slice(1))
        ? "@" + symbols[op.slice(1) as any]
        : op
    )
    .map((op) =>
      op.startsWith("(") && symbols.hasOwnProperty(op.slice(1))
        ? "(" + symbols[op.slice(1) as any]
        : op
    );

  console.log(ops)

  return "";
};

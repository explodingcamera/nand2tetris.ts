import buildIns from "./../data/buildIns.json";

export interface Symbols {
  [x: string]: number;
}

export const parseOperations = (file: string): string[] =>
  file
    .replace(/(\/\/).*|\)|[^\S\r\n]/g, "")
    .replace(/^\s*\n/gm, "")
    .trim()
    .split("\r");

export const parseSymbols = (operations: string[]): Symbols => {
  const labels = operations.reduce<{ [x: string]: number }>(
    (prev, val, i) => ({
      ...(val.startsWith("(") && {
        [val.slice(1)]: i - Object.keys(prev).length,
      }),
      ...(prev && prev),
    }),
    {}
  );

  let labelCount: number = 0
  let ops = operations
    .filter((v) => !Object.keys(buildIns).some((b) => b === v.slice(1)))
    .filter((v) => v.startsWith("@"))
    .map((v) => v.slice(1))
    .filter((v) => Number.isNaN(parseInt(v)))
    .filter((v, i, a) => a.indexOf(v) === i)
    .map((o, i) => {

      console.log(o, i + 16 - labelCount, labelCount);

      if (!labels.hasOwnProperty(o)) {
        return [o, i + 16 - labelCount]
      }

      if (!labels[o]) {
        throw new Error("invalid label: " + o)
      }

      labelCount+=1;
      return [o, labels[o] || (() => {})()]
      // [o, labels.hasOwnProperty(o) ? labels[o] || (() => {throw new Error("invalid label: " + o)})() : i + 16])

    });

    

  return {
    ...Object.fromEntries(ops),
    ...buildIns,
  };
};
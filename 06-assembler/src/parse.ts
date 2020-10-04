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

  let ops = operations
    .filter((v) => !Object.keys(buildIns).some((b) => b === v.slice(1)))
    .filter((v) => v.startsWith("@"))
    .map((v) => v.slice(1))
    .filter((v) => Number.isNaN(parseInt(v)))
    .filter((v, i, a) => a.indexOf(v) === i)
    .reduce(
      (result: string[][], v) => {
        result[labels.hasOwnProperty(v) ? 0 : 1].push(v);
        return result;
      },
      [[], []]
    )
    .map((x, isVar) =>
      x.map((o, i) => (isVar ? [o, i + 16] : [o, labels[o] || (() => {})()]))
    )
    .flat();

  return {
    ...Object.fromEntries(ops),
    ...buildIns,
  };
};

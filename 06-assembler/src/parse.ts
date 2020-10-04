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
      // only add labels
      ...(val.startsWith("(") && {
        [val.slice(1)]: i - Object.keys(prev).length,
      }),
      ...(prev && prev),
    }),
    {}
  );

  let ops = operations
    // filter out only symbols
    .filter((v) => v.startsWith("@"))
    .map((v) => v.slice(1))

    // filter out built-in symbols
    .filter((v) => !Object.keys(buildIns).some((b) => b === v))

    // filter out numbers
    .filter((v) => Number.isNaN(parseInt(v)))

    // split operations into variables and labels
    .reduce(
      (result: string[][], v) => {
        result[labels.hasOwnProperty(v) ? 0 : 1].push(v);
        return result;
      },
      [[], []]
    )

    // calculate symbol values
    .map((x, isVar) =>
      x.map((o, i) => (isVar ? [o, i + 16] : [o, labels[o] || (() => {})()]))
    )

    // merge variables and labels again
    .flat();

  return {
    ...Object.fromEntries(ops),
    ...buildIns,
  };
};

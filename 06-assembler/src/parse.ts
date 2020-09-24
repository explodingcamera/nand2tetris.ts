import buildIns from "./../data/buildIns.json"

export const parseOperations = (file: string): string[] =>
  file.replace(/(\/\/).*|\)|[^\S\r\n]/g, '')
  .replace(/^\s*\n/gm, '')
  .trim()
  .split('\r')

export const parseSymbols = (operations: string[]): { [x: string]: number; } => 
   ({
    ...Object.fromEntries([...new Set(
    operations
    .filter(v => !Object.keys(buildIns).some(b => b === v.slice(1)))
    .filter(v => v.startsWith('@'))
    .map(v => v.slice(1))
    // .filter(v => ["@", "("].some(s => s===v[0]))
    .filter(v => Number.isNaN(parseInt(v)))
    )].map(
    (o, i) => [o, i+16]
  )),
  ...buildIns
})
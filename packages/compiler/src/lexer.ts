import { createToken, Lexer } from "chevrotain";
import { keywords, symbols } from "./../data/tokens.json";
import { capitalize } from "./utils";

export const Identifier = createToken({
  name: "Identifier",
  pattern: /[a-zA-Z]\w*/,
});

// Numbers with digits from 0-9 that can be negative,
// optionally can have an exponent (e or E)
// that can be positive or negative
export const NumberLiteral = createToken({
  name: "Number",
  pattern: /-?(0|[1-9]\d*)(\.\d+)?([eE][+-]?\d+)?/,
});

// Strings that start and end with "
// can span multiple lines and have
// escaped characters by prefixing them with \
export const StringLiteral = createToken({
  name: "StringLiteral",
  pattern: /"(?:[^\\"]|\\(?:[bfnrtv"\\/]|u[0-9a-fA-F]{4}))*"/,
});

export const WhiteSpace = createToken({
  name: "WhiteSpace",
  pattern: /\s+/,
  group: Lexer.SKIPPED,
});

export const Comment = createToken({
  name: "Comment",
  pattern: /\/\/.+/,
  group: "comments",
});

export const Keywords = Object.fromEntries(
  keywords.map((keyword) => [
    capitalize(keyword),
    createToken({
      name: keyword,
      pattern: new RegExp(keyword),
      longer_alt: Identifier,
    }),
  ])
);

export const Symbols = Object.fromEntries(
  Object.entries(symbols).map(([symbol, name]) => [
    capitalize(name),
    createToken({
      name,
      pattern: new RegExp(`\\${symbol}`),
      longer_alt: Identifier,
    }),
  ])
);

export const tokens = [
  WhiteSpace,
  Comment,

  NumberLiteral,
  StringLiteral,

  // "keywords" appear before the Identifier
  ...Object.values(Keywords),

  // The Identifier must appear after the keywords because all keywords are valid identifiers.
  Identifier,

  ...Object.values(Symbols),
];

export default new Lexer(tokens);

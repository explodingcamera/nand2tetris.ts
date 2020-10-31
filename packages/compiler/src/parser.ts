import { CstParser } from "chevrotain";
import * as lexer from "./lexer";

export class Parser extends CstParser {
  constructor() {
    super(lexer.tokens, {
      maxLookahead: 2,
    });

    this.performSelfAnalysis();
  }

  private array = this.RULE("array", () => {
    this.CONSUME(lexer.Symbols.LBracket);
    this.MANY_SEP({
      SEP: lexer.Symbols.Comma,
      DEF: () => {
        this.SUBRULE(this.value);
      },
    });
    this.CONSUME(lexer.Symbols.RBracket);
  });

  private value = this.RULE("value", () => {
    this.OR([
      { ALT: () => this.SUBRULE(this.array) },
      { ALT: () => this.CONSUME(lexer.StringLiteral) },
      { ALT: () => this.CONSUME(lexer.NumberLiteral) },
      { ALT: () => this.CONSUME(lexer.Keywords.True) },
      { ALT: () => this.CONSUME(lexer.Keywords.False) },
      { ALT: () => this.CONSUME(lexer.Keywords.Null) },
    ]);
  });
}

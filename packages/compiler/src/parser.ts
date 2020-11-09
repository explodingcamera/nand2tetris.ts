import { CstParser } from "chevrotain";
import * as lexer from "./lexer";

export class Parser extends CstParser {
  constructor() {
    super(lexer.tokens, {
      maxLookahead: 2,
    });

    this.performSelfAnalysis();
  }

  public program = this.RULE("program", () => {
    this.MANY(() => {this.SUBRULE(this.statement)})
  });

  private parenExpression = this.RULE("parenExpression", () => {
    this.CONSUME(lexer.Symbols.LParen)
    // this.MANY(() => {
    //   this.SUBRULE(this.statement)
    // })
    this.CONSUME(lexer.Symbols.RParen)
  })

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

  private statement = this.RULE("statement", () => {
    this.OR([
      { ALT: () => this.SUBRULE(this.classStatement) },
      { ALT: () => this.SUBRULE(this.functionStatement) },
      { ALT: () => this.SUBRULE(this.blockStatement) },
      { ALT: () => this.SUBRULE(this.emptyStatement) },
   ]);
  });

  private type = this.RULE("type", () => {
    this.OR([
      { ALT: () => this.CONSUME(lexer.Identifier) },
      { ALT: () => this.CONSUME(lexer.Keywords.Void) },
      { ALT: () => this.CONSUME(lexer.Keywords.Int) },
      { ALT: () => this.CONSUME(lexer.Keywords.Char) },
      { ALT: () => this.CONSUME(lexer.Keywords.Boolean) },
   ]);
  });


  private emptyStatement = this.RULE("emptyStatement", () => {
    this.CONSUME(lexer.Symbols.Semicolon)
  });

  private blockStatement = this.RULE("blockStatement", () => {
    this.CONSUME(lexer.Symbols.LCurly)
    this.MANY(() => {
      this.SUBRULE(this.statement)
    })
    this.CONSUME(lexer.Symbols.RCurly)
  })

  private functionStatement = this.RULE("functionStatement", () => {
    this.CONSUME(lexer.Keywords.Function)
    this.SUBRULE(this.type)
    this.CONSUME(lexer.Identifier)
    this.SUBRULE(this.parenExpression)
    this.CONSUME(lexer.Symbols.LCurly)
    this.MANY(() => {
      this.SUBRULE(this.statement)
    })
    this.CONSUME(lexer.Symbols.RCurly)
  })

  private classStatement = this.RULE("classStatement", () => {
    this.CONSUME(lexer.Keywords.Class)
    this.CONSUME(lexer.Identifier)
    this.CONSUME(lexer.Symbols.LCurly)
    this.MANY(() => {
      this.SUBRULE(this.statement)
    })
    this.CONSUME(lexer.Symbols.RCurly)
  })
}

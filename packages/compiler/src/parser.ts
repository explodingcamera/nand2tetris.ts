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
    this.MANY(() => {
      this.SUBRULE(this.statement);
    });
  });

  private parameterExpression = this.RULE("parameterExpression", () => {
    this.CONSUME(lexer.Symbols.LParen);
    this.SUBRULE(this.expression);
    this.CONSUME(lexer.Symbols.RParen);
  });

  private argumentExpression = this.RULE("argumentExpression", () => {
    this.CONSUME(lexer.Symbols.LParen);

    this.MANY_SEP({
      SEP: lexer.Symbols.Comma,
      DEF: () => {
        this.SUBRULE(this.type);
        this.CONSUME(lexer.Identifier);
      },
    });

    this.CONSUME(lexer.Symbols.RParen);
  });

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
      { ALT: () => this.CONSUME(lexer.Comment) },
      { ALT: () => this.SUBRULE(this.ifStatement) },
      { ALT: () => this.SUBRULE(this.whileStatement) },
      { ALT: () => this.SUBRULE(this.classStatement) },
      { ALT: () => this.SUBRULE(this.functionStatement) },
      { ALT: () => this.SUBRULE(this.blockStatement) },
      { ALT: () => this.SUBRULE(this.expressionStatement) },
      { ALT: () => this.SUBRULE(this.emptyStatement) },
    ]);
  });

  private type = this.RULE("type", () => {
    this.OR([
      { ALT: () => this.CONSUME(lexer.Identifier) },
      { ALT: () => this.CONSUME(lexer.Keywords.Int) },
      { ALT: () => this.CONSUME(lexer.Keywords.Char) },
      { ALT: () => this.CONSUME(lexer.Keywords.Boolean) },
    ]);
  });

  private expression = this.RULE("expression", () => {
    this.OR([
      { ALT: () => this.SUBRULE(this.varExpression) },
      // { ALT: () => this.SUBRULE(this.letExpression) },
      // { ALT: () => this.SUBRULE(this.relationExpression) },
    ]);
  });

  private varExpression = this.RULE("varExpression", () => {
    this.CONSUME(lexer.Keywords.Var)
    this.SUBRULE(this.type);
    this.MANY_SEP({
      SEP: lexer.Symbols.Comma,
      DEF: () => {
        this.CONSUME(lexer.Identifier);
      },
    });
  });

  // private letExpression = this.RULE("letExpression", () => {
  // });

  // private relationExpression = this.RULE("relationExpression", () => {
    // this.SUBRULE(this.additionExpression);
  // });

  // private additionExpression = this.RULE("additionExpression", () => {
  // });

  // private term = this.RULE("term", () => {
  // });

  private expressionStatement = this.RULE("expressionStatement", () => {
    this.SUBRULE(this.expression);
    this.CONSUME(lexer.Symbols.Semicolon);
  });

  private ifStatement = this.RULE("ifStatement", () => {
    this.CONSUME(lexer.Keywords.If);
    this.SUBRULE(this.statement);
    this.OPTION(() => {
      this.CONSUME(lexer.Keywords.Else);
      this.SUBRULE2(this.statement);
    });
  });

  private whileStatement = this.RULE("whileStatement", () => {
    this.CONSUME(lexer.Keywords.While);
    this.SUBRULE(this.parameterExpression);
    this.SUBRULE(this.statement);
  });


  private emptyStatement = this.RULE("emptyStatement", () => {
    this.CONSUME(lexer.Symbols.Semicolon);
  });

  private blockStatement = this.RULE("blockStatement", () => {
    this.CONSUME(lexer.Symbols.LCurly);
    this.MANY(() => {
      this.SUBRULE(this.statement);
    });
    this.CONSUME(lexer.Symbols.RCurly);
  });

  private functionStatement = this.RULE("functionStatement", () => {
    this.CONSUME(lexer.Keywords.Function);
    this.OR([
      { ALT: () => this.SUBRULE(this.type) },
      { ALT: () => this.CONSUME(lexer.Keywords.Void) },
    ]);

    this.CONSUME(lexer.Identifier);
    this.SUBRULE(this.argumentExpression);
    this.CONSUME(lexer.Symbols.LCurly);
    this.MANY(() => {
      this.SUBRULE(this.statement);
    });
    this.CONSUME(lexer.Symbols.RCurly);
  });

  private classStatement = this.RULE("classStatement", () => {
    this.CONSUME(lexer.Keywords.Class);
    this.CONSUME(lexer.Identifier);
    this.CONSUME(lexer.Symbols.LCurly);
    this.MANY(() => {
      this.SUBRULE(this.statement);
    });
    this.CONSUME(lexer.Symbols.RCurly);
  });
}

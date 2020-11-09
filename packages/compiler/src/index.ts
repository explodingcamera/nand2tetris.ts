import lexer from "./lexer"
import {Parser} from "./parser"

const simpleClass = `
// lol
class Main {
    function void main() {
    }
 }`

const complexClass = `
// lol
class Main {
    function void main() {
      var Array a; 
      var int length;
      var int i, sum;
 
      let length = Keyboard.readInt("How many numbers? ");
      let a = Array.new(length); // constructs the array
      
      let i = 0;
      while (i < length) {
         let a[i] = Keyboard.readInt("Enter a number: ");
         let sum = sum + a[i];
         let i = i + 1;
      }
      
      do Output.printString("The average is ");
      do Output.printInt(sum / length);
      return;
    }
 }`

const tokenized = lexer.tokenize(simpleClass)

// console.log(tokenized.tokens.map(token => `${token.image} : ${token.tokenType.name}`));

const parser = new Parser();

parser.input = tokenized.tokens
const cst = parser.program()

console.log(JSON.stringify(cst, null, 2));
console.log(parser.errors);
 
import lexer from "./lexer"

console.log(lexer.tokenize(`
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
 }`));

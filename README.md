LexYaccCalc is a trivial CLI four-function calculator written
as a sample project in Lex and Yacc.

### Building

Simply run `make`, then `./calc` to run the calculator.

### Usage

In a running calculator, type an expression and press Enter to
evaluate. The calculator supports the four basic arithmetic
binary expressions as well as parentheses for expression grouping.
Unary minus (i.e. "negative numbers") are not supported, nor is
exponentiation.

### Testing

Unit tests are included in the form of an RSpec file. To run,
execute either `make test` or `rspec calc_test.rb`.

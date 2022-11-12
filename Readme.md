# Ruby Styling

1. When you define or initialize a method, variable, or file, you should always use snake_case formatting.

```
# Naming a file
this_is_a_snake_cased_file.rb

# Assigning a variable
forty_two = 42

# Defining a method
def this_is_a_great_method
# do stuff
End

```

2. When you want to represent a value that will not change, you define a constant variable, often referred to as a constant. In ruby, constants are denoted with all uppercase letters

```
# Constant declaration
FOUR = 'four'
FIVE = 5
```

3. When working with do/end blocks, prefer { } when the entire code expression fits on one line

```
# Multi-line
[1, 2, 3].each do |i| # do stuff
end

# Does the same thing in single line
[1, 2, 3].each { |i| do_some_stuff }

```

4. When declaring a class name, use CamelCase formatting which uses no spaces and capitalizes every word

# Class naming

```
class MyFirstClass
end

class MySecondClass
end
```

# Class name or Module name

:: symbol is used to define a namespace, which is a way to group classes in Ruby and differentiate from other classes with the same name. E.g. ActiveRecord::Base is referring to the ‘Base’ class in the “ActiveRecord” module, to differentiate from other classes also named ‘Base’.

When looking at the method list, :: means something different. It means the method after the :: is a class method

# Methods

Methods denoted by :: are considered class methods
Methods denoted by # are considered instance methods

- Use in Ruby documentation is different from their use in actual code

# Instance method/Class method

look at the string "world wide web" and directly apply instance methods to it

e.g. look at the method list sidebar and see there is a #split method for strings, which means that split is an instance method, and we can call that method on any string directly:

```
irb :001 > "world wide web".split
 => ["world", "wide", "web"]
```

further, we can see from the methods sidebar there are to class methods: ::new and ::try_convert. Public Class Methods are called directly from the class

```
irb :001 > b = String.new("blue")
 => "blue"
irb :002 > String.try_convert("red")
 => "red"
```

# Literals

any notation that lets you represent a fixed value in source code

```
'Hello, world!'          // string literal
375                      // integer literal
3.141528                 // float literal
true                     // boolean literal
{ 'a' => 1, 'b' => 2 }   // hash literal
[ 1, 2, 3 ]              // array literal
:sym                     // symbol literal
nil                      // nil literal
```

# Strings

a list of characters in a specific sequence. in programming, we often work with text data like names, messages, and descriptions. Ruby uses strings to represent such data. string literals are written with either single quotes ('hi there') or double quotes ("hi there"). both create a strings but there are subtle differences:

if you'd like to include single quotes within your string then 2 options: either use the double quote method or the single quote without escaping

```
# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''
```

the backslash or escape character (\) tells the computer that the quotes that follow are not meant as ruby syntax but only as simple quote characters to be used in the string

double quotes allow for # string interpolation

# Symbols

symbols are created by placing a colon ( : ) before a word

```
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

a symbol is used when you want to reference something like a string but dont ever intend to print it to the screen or change it. referrred to as an immutabble (i.e. unchangeable) string.

# Numbers

most basic form of numbers is called an integer. represented by a whole number only, no decimal point

float - is a number that contains a decimal

```
# Example of integer literals
1, 2, 3, 50, 10, 4345098098

# Example of float literals
1.2345, 2345.4267, 98.2234
```

# nil

we need a way to express "nothing" and in Ruby we do this with nil. a variable with a value of nil could be described as having 'nothing' or being 'completely empty', or even just simply 'not any specific type'.
an example of this may be where an output is expected but none is returned:

```
irb(main):001:0> puts "hello world!"
hello world!
=> nil

```

the puts method prints out a string and returns nothing, so we see 'nil' being returned after the string is displayed

you can explicitly refer to the nil value by using the nil literal in the code:

```
x = nil  #nil literal used here
=> nil

```

check if something is a nil y using .nil?

```
"hello world!".nil?
=> false
```

an important property of the nil type is that when used in an expression, such as an if statement, it will be treated as false, as it represents an absence of content

```
if nil
puts "hello world"
end
=> nil

```

the return value (as shown by hash rocket =>) is nil, and the code contained within the if is not run, as nil is interpreted as being a false condition. instead, do the following:

```
if 1
puts "hello world"
end
hello world
=> nil

```

since 1 is not "nothing" or a false value, the code within the 'if' is run and we see the output.

- nil can be used within a conditional statement, and will be treated as false

- caveat - both false and nil are treated as negative when evaluated in an expression, but they are not equivalent

```
false == nil
=> false

```

# Operations

- adding, subtracting, and multiplying integers

+, -, \*

- division vs modulo

divide integers with the / operator

modulo operator - represented by the % symbol. can be referred to a the remainder operator, but this is not strictly correct.

in modulo expressions, the value to the left of the % is called the divident, and the value to the right is called the modulus

the modulo operator returns the remainder of a division operation

```
16 % 4
=> 0

16 % 5
=> 1

15 / 4
=> 3

```

when dividing integers, you will only receive an integer in return. if we want more precision we need to use floats.

the #remainder method computes and returns the remainder of an integer division operation:

```
16.remainder(5)
=> 1
```

#divmod method that computes both the integer result of the division and its modulo value

```
16.divmod(5)
=> [3, 1]

```

subtle but important difference between modulo and remainder operations

- modulo operations return a positive integer when the second operand is positive, and a negative integer when the second operand is negative
- remainder operations return a positive integer when the first operand is positive, and a negative integer when the first operand is negative

when working with positive integers, we don't need to worry about whether we should use the modulo or remainder method; the return value is postive either way

but if either number is negative, it's not so simple. if you can't work with positive numbers then make sure to know exactly which operator or method you need to use

# String Concatenation

when you use the + operator to join 2 strings together

```
'foo' + 'foo'
=> "foofoo"

'foo' + 'bar'
=> foobar

```

- cannot add a string and a number together; no implicit conversion of Integer into String

# Type Conversion

suppose we have a user input of '12', which is a string, but we want to increment this by 2. we can't do '12' + 2.

method that will convert a string to an integer, called to_i.  
can be called on any string

```
'12'.to_i
=> 12
```

this returns an integer.

# Basic Data Structures

- arrays - used to organize info into an ordered list; can be made up of strings, floats, integers, or any other data type.
- an array literal is denoted by square brackets [ ].

each element in an array can be accessed via an index. index is numbered starting at zero.

# Hashes

a hash is a set of key-value pairs. hash literals are represented with curly braces { }. a key-value pair is an association where a key is assigned a specific value; a hash consists of a key, usually represented by a symbol, that points to a value (denoted using a =>).

```
{:dog => 'barks'}
=> {:dog => 'barks'}

```

can have mutiple items in a hash if we separate them with commas, but they will not necessarily be in any order.

# Puts vs return

when we call the puts method we are telling ruby to print something to the screen. however, puts does not return what is printed to the screen.

expressions \*do something but they also return something

e.g.

```
puts 'stuff'
stuff
=> nil
```

stuff was printed to the console and then a nil, which is rubys way of saying nothing was returned.

# Variables

- what is a variable?
  used to store info to be referenced and manipulated in a computer program

also provide a way of labeling data with a descriptive name so the programs can be better understood by ourselves or users

- sole purpose is to label and store data in memory

# Getting Data from a User

- gets method;
  stands for "get string"
  when used:
  the program waits for the user to 1) type in information 2) press the enter key

  ```
  name = gets.chomp Bob
  => "Bob"

  ```

* chomp chained to gets to remove the carriage return characters at the end of the string

# Variable Scope

a variables scope determines where in the program a variable is available for use

defined by where the variable is initialized or created

in ruby, variable scope is defined by a method definition or by a block

# Variable scope and method definitions

methods are pieces of reuseable code that your program can execute many times during its run

```
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end
```

once method is defined we can call it as many times as we need with different values

```

name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry'   # prints Peter Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name                          # prints Somebody Else

```

- methods have self contained scope. means only variables initialized within the methods body can be referenced or modified from within the methods body

- variables initialized inside a methods body are not available outside the methods body

# Variable scope and blocks

block is a piece of code that follows a methods invocation, delimited by curly braces or do/end

the code inside a block can access and modify variables that are defined outside of the block, but any variables initialized inside the block can't be accessed by outer code

- inner scope can access variables initialized in an outer scope but not vice versa

```
# scope.rb

a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a accessible here, in an inner scope?
end

puts a

```

the value of a is 3 because a is available to the inner scope created by 3.times do...end, which allowed the code to re-assign the value of a. reassigned it 3 times to 3.

```
# scope.rb

a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?
```

get an error because b is not available outside of the method invocation with a block where it is initialized. when we call puts b..it is not available within that outer scope

# Types of variables

5 types of variables - constants, global variables, class variables, instance variables, and local variables.

constants - declared by capitalizing every letter in the variables name;
used for storing data that never needs to change
constants cannot be declared in method definitions, and are available throughout the apps scopes

- global variables - declared by starting the variable name with a dollar sign ($)
  available throughout the entire app, overiding all scope boundaries;
  can cause complications do rarely used

  ```
  $var = 'I am also available throughout your app.'
  ```

* class variables

- declared by starting the variable name with two @ symbols.
- accessible by instances of your class, as well as the class itself
- when you need to declare a variable that is related to a class, but each instance of that class does not need its ownvalue for this variable, use a class variable

must be initialized at the class level, outside any method definitions

```
@@instances = 0

```

- instance variables are declared by starting the variable name with one @ sign.
  -available throughout the current instance of the parent class
- can cross some scope boundaries but not all of them

```
@var = 'I am available throughout the current instance of this class.'

```

- local variables are most common and obey all scope boundaries;

```
var = 'I must be passed around to cross scope boundaries.'
```

not all variables are created equal and the scope in which a variable is defined changes its availability throughout the program.

# Methods

define a method using def/end

```
def say
  # method body goes here
end
```

we call(or invoke) the method by typing its name and passing in arguments.

parameter (say(words)) - parameters are used when you have data outside of a method's scope, but you need access to it within the method definition

arguments - pieces of info that are sent to a method invocation to be modified or used to return a specific result

we "pass" arguments to a method when we call it

```
def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
```

notice there's a (words) after 'say' in the method definition. this is the parameter

we pass arguments to a method when we call it;

we pass the word, or string of words, that we want to use in the 'say' method definition

when we pass those words into the method definition, they're assigned to the local variable 'words' and we can use them however we please from within the method definition

the 'words' local variable is scoped at the method definition level; cannot reference this local variable outside of the 'say' method definition

# Default Parameters

structure the method definition so that it always works, whether given arguments or not.

```
def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")
```

- parentheses when calling methods can be left off if preferred

# Method definition and local variable scope

a method definition creates its own scope outside the regular flow of execution

- local variables within a method definition cannot be referenced from outside of the method definition;

```
a = 5

def some_method
  a = 3
end

puts a
```

the value of a is still 5 because method definitions create their own scope that is entirely outside of the execution flow

- dont' confuse method invocation with a block and method definition

```
# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end
```

```
# Method definition

def print_num(num)
  puts num
end
```

# obj.method or method(obj)

- 2 ways to call methods.

  1. - some_method(obj); obj is the argument being passed to 'some_method' method

  2. method called with an explicit caller, like a caller.some_method(obj)

  # Mutating the Caller

  when calling a method and the argument is mutated permanently;

  recall that method parameters are scoped at the method definition level

  ```
  def some_method(number)
  number = 7 # this is implicitly returned by the method
  end
  ```

a = 5
some_method(a)
puts a

```
- we passed a to the 'some_method' method.

- in 'some_method', the value of a is assigned to the local variable 'number', which is scoped at the method definition level

- 'number' is reassigned the value of "7"

did this affect a's value?  no, because 'number' is scoped at the method definition level and 'a''s value is unchanged

- method definitions cannot modify arguments passed in to them permanently.


```

```
a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"  #Before mutate method: [1, 2, 3]
mutate(a)
p "After mutate method: #{a}" #After mutate method: [1, 2]
```

we have permanently modified the array that local variabble 'a' references by passing it to the mutate method, even though 'a' is outside the definitions scope.
this is because the 'pop' method 'mutates the caller'. a is still pointing to the same array

contrast this with a method definition that does not mutate the caller

```
a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
```

results in the same output before and after the method invocation, so we know 'a' was not modified in any way; this is because the 'last' method does not mutate the caller

# puts vs return: the Sequel

difference between 'puts' and 'return'

```
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value
```

we are assigning the returned_value to the value returned by the add_three method.

then we print returned_value to the output to see what is has inside it

output is 7 because that's what the method call returned

- ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it

an example of an explicit return added

```
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value
```

- Main point - in Ruby, the 'return' reserved words is not required in order to return something from a method

# Chaining Methods

```
"hi there".length.to_s      # returns "8" - a String
```

the String 'length' method returns an integer, and we can call to_s on integers to convert them into strings

```
def add_three(n)
  puts n + 3
end
```

we are using puts to output the incremented value as opposed to implicitly returning it

```
add_three(5).times { puts "will this work?" }
```

this results in an error because:

- 'puts' always returns nil

so to fix this:

```

def add_three(n)
new_value = n + 3
puts new_value
new_value
end
```

- could also use 'return new_value' but since new_value is the last expression in the method definition, it's being implicitly returned

# Method Calls as Arguments

```
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end
```

1. 'add' and 'subtract' methods defined;
   both takes parameters a and b

2. call these methods by passing integer values:

```
add(20, 45)
=> 65
# returns 65

subtract(80, 10)
=> 70
# returns 70
```

- in ruby, we can pass a method call as an argument to other methods

- these methods return integer values - the returned value is what is being passed as arguments

example:

```
def multiply(num1, num2)
  num1 * num2
end
```

now pass 'add' and 'subtract' methods as arguments to multiply:

```
multiply(add(20, 45), subtract(80, 10))
=> 4550
# returns 4550
```

or another example

```
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=> 560
```

breakdown:

- first, we're passing 'add' 2 arguments: subtract(80, 10) nad multiply(subtract(20, 6), add(30, 5))

- the first argument, the 'subtract' method call, returns 70

- the 2nd argument, the 'multiply' method call, furthermore has two arguments: subtract(20, 6) and add(30, 5)

  - here, subtract(20, 6) returns 14 and add(30, 5) returns 35 thus the method call becomes multiply(14, 35). this returns 490

- putting together the return values of those 2 method calls, we have add(70, 490), which returns 560

# Summary

We've seen that method calls always return a value and we can pass that method call as an argument to another method call based on the returned value. it's vital to know what our defined methods are returning, since in the final analysis, this is what is actually being passed as arguments to other method calls.

# The Call Stack

why does understanding the stack matter?

- it's helpful for debugging and it's - fundamental to how JS/RUBY works

# What is the call stack?

- a "todo list" of function invocations

  - one things is happening at any given time, so ruby needs to keep track of a history of invoked but not completed function calls

  - last in, first out structure

    - when adding, it's added to the top. and to remove, take it off the top (don't remove from the bottom)

  # How your code changes the stack

  - whenever you invoke a function, the details of the invocation are saved to the top of the stack (pushed to the top)

  - whenever a function returns, the information about the invocation is take off the top of the stack (popped off the top)

# Stack Example

```
function multiply(x, y){
  return x * y;
}
var res = multiply(3, 5)

```

- function called multiply being called on line 5
  - the first function being invoked is the 'main' function. added to the stack
- in the main function, we are calling multiply so add a stack frame to the top of the stack

so we have function:main (line 5) on the bottom of the stack and function:mulitply (line 2) on top of it.

- in multiply, the only line is a return. when we return something it's popped off the stack so our main function is done and stack is empty

# Stack Frame Contents

Contains:

- the function that was invoked (e.g. multiply)
- the parameters that were passed to the function
- current line number

# Stack Definition

- an ordered set of stack frames
  -to do list for function calls or invocations

- most recently invoked is on the top of the stack
- the bottom of the stack is the first function invoked
- the stack is processed from top to bottom
  - last in, first out

* the call stack has a limited size that varies, but usually sufficient for more than 10000 stack entries. if the stack runs out of room, you will see a 'systemstackerror' exception

# Summary

methods are a major part of programming in ruby

knowing the difference between puts and return will help avoid common pitfalls

knowing how and when to use method chaining will help better read code and write more succint code

- watch out for nils.

# Conditionals

- conditionals formed using a combo of 'if' statements and comparison and logical operators (<, >, <=, >=, ==, !=, &&, || )

- basic logical structures defined with reserved words if, else, elsif, and end

if using 1-line syntax, must use 'then'

```
if x==3 then puts "x is 3" end
```

- can append the 'if' condition at the very end.

```
puts 'x is 3' if x ==3
```

- reserved word 'unless'. acts as opposite of 'if' so used like this:

```
puts "x is NOT 3" unless x ==3;
```

# Comparisons

- the expressions or values that an operator uses are its operands. in comparisons, the expressions to the left and right of the operator are the operands

1. '==' the equal to operator; anything to the L of the symbol is exactly equal to anything on the right

2. != 'not equal to' operator. anythign to the left of the symbol is not equal to anything to the right

3. < - less than symbol; anything to the left of the symbol has a lower value than anything to the right

4. > - greater than symbol; anything to the left of symbol has a higher value than anything to the right

- cannot use < > for values of different types

# Combining Expressions

1. && 'and' operator; expressions to the L and R both have to be true for the entire expression to be true

2. || operator - either expression to the L or R has to be true for the entire expression to be evaluated to true

3. ! the 'not' operator; when added in front of a boolean expression it will change that boolean value to its opposite

```
!(4 == 4)
=> false
```

ruby first evaluates whats in the parentheses then the ! operator changes it;

- helpful to use parentheses to group expressions together; computer will evaluate parentheses in normal algebraic order

- Order of Precedence - operations from highest order or precedence to lowest

1. <=, <, >=, > - comparison
2. ==, != - equality
3. && - logical AND
4. || - logical OR

```
if x && y || z
 # do something
end
```

First the x && y statement will be executed. If that statement is true, then the program will execute the # do something code on the next line. If the x && y statement is false, then the z will be evaluated. If the z is true, the code on the next line will be evaluated. If the z is false, then the code will exit the if statement.

# Ternary Operator

uses a combination of the ? and :

```
true ? "this is true" : "this is not true"

false ? "this is true" : "this is not true"

```

- first, computer evaluates what is to the left of the ?; if the expression to the left of ? is true, the code directly to the right of the ? gets executed;

- if the code on the left of ? is false, then the code directly to the right of the : gets executed

* When should I use a Ternary expression?

- should be used to select between 2 values, not to choose betweeen 2 actions (an action would be something like printing a value or setting a variable to a new value)

- the ternary result should always be assigned to a variable, passed to a method as an argument or returned by a method. if not doing any of these things, an if/else statement would be better

```
foo = hitchhiker ? 42 : 3.14  (assign result of ?: to a variable)

puts(hitchhiker ? 42 : 3.14)  - pass result as an argument

return hitchhiker ? 42 : 3.14  - return result
```

# Case Statement

similar function to an 'if' statement; use reserved words 'case, when, else, and end.'

first, define a case and then evaluate the value of the case and what operation to complete if the case is true;

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

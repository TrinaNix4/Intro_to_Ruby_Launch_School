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

# Instance method

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

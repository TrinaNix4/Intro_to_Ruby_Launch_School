# Ruby Styling

1. When you define or initialize a method, variable, or file, you should always use snake_case formatting.

# Naming a file

this_is_a_snake_cased_file.rb

# Assigning a variable

forty_two = 42

# Defining a method

def this_is_a_great_method

# do stuff

End

2. When you want to represent a value that will not change, you define a constant variable, often referred to as a constant. In ruby, constants are denoted with all uppercase letters

# Constant declaration

FOUR = 'four'
FIVE = 5

3. When working with do/end blocks, prefer { } when the entire code expression fits on one line

# Multi-line

[1, 2, 3].each do |i| # do stuff
end

# Does the same thing in single line

[1, 2, 3].each { |i| do_some_stuff }

4. When declaring a class name, use CamelCase formatting which uses no spaces and capitalizes every word

# Class naming

class MyFirstClass
end

class MySecondClass
end

# Class name or Module name

:: symbol is used to define a namespace, which is a way to group classes in Ruby and differentiate from other classes with the same name. E.g. ActiveRecord::Base is referring to the ‘Base’ class in the “ActiveRecord” module, to differentiate from other classes also named ‘Base’.

When looking at the method list, :: means something different. It means the method after the :: is a class method

# Methods

Methods denoted by :: are considered class methods
Methods denoted by # are considered instance methods

- Use in Ruby documentation is different from their use in actual code

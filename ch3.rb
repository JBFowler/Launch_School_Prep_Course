# answers to Ch3 (Basics of Ruby)


def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

# method for question 1
def greeting(name)
  prompt("Welcome #{name}! Glad to have you!")
end

# method for question 3
def multiply(a, b)
  a * b
end

# method for question 5
def scream(words)
  words = words + "!!!!"
  prompt(words)
end

def question1
  question(1)
  greeting("Joe")
end

def question2
  question(2)
  prompt("1. The expression evaluates to 2.")
  prompt("2. The expression evaluates to nil.")
  prompt("3. The expression evaluates to 'Joe'.")
  prompt("4. The expression evaluates to 'four'.")
  prompt("5. The expression evaluates to nil.")
end

def question3
  question(3)
  prompt("Let's multiply 3 and 4")
  prompt(multiply(3, 4))
end

def question4
  question(4)
  prompt("The following code will return nothing to screen")
end

def question5
  question(5)
  scream("Yippeee")
end

def question6
  question(6)
  prompt("The error message tells me that the method 'calculate_product' was given the wrong number of arguments.  It should have gotten 2 but was only given one.")
end

question1
question2
question3
question4
question5
question6
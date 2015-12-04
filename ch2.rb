# answers to Ch2 (Basics of Ruby)


def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

def question1
  question(1)
  # pretend this is for file name.rb
  puts "=> Please type in your name."
  @name = gets.chomp
  prompt("Hello #{@name}! Glad to see you!")
end

def question2
  question(2)
  # pretend this is for file age.rb
  puts "=> How old are you?"
  age = gets.chomp
  prompt("In 10 years you will be: #{age.to_i + 10} years old.")
  prompt("In 20 years you will be: #{age.to_i + 20} years old.")
  prompt("In 30 years you will be: #{age.to_i + 30} years old.")
  prompt("In 40 years you will be: #{age.to_i + 40} years old.")
end

def question3
  question(3)
  # continued part of name.rb
  10.times do
    puts @name
  end
end

def question4
  question(4)
  # continued part of name.rb
  puts "=> What is your first name?"
  first_name = gets.chomp.capitalize
  puts "=> What is your last name?"
  last_name = gets.chomp.capitalize
  prompt("Hello #{first_name + " " + last_name}")
end

def question5
  question(5)
  prompt("The x prints 3 in the first case, and x gives an error in the second case because it is not within scoping laws.")
end

def question6
  question(6)
  prompt("It tells me that on line 3 the program is trying to access a variable or method that doesn't exist, or a variable that is not accessible because it is not within the same scope as its accessor.")
end

question1
question2
question3
question4
question5
question6
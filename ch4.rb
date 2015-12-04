# Answers to Ch4 (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

# method used for question 2
def all_caps(str)
  prompt(str.upcase) if str.length > 10
end

def number_line_if(num)
  if num > 100
    prompt("Your number is greater than 100.")
  elsif num > 51 && num < 101
    prompt("Your number is between 51 and 100.")
  else
    prompt("Your number is between 0 and 50")
  end
end

def number_line_case(num)
  case num 
  when 0..50
    prompt("Your number is between 0 and 50")
  when 51..100
    prompt("Your number is between 51 and 100.")
  else
    prompt("Your number is greater than 100.")
  end
end

def question1
  question(1)
  prompt("1. false")
  prompt("1. false")
  prompt("1. false")
  prompt("1. true")
  prompt("1. true")
end

def question2
  question(2)
  all_caps("what is going on")
  all_caps("hi")
end

def question3
  question(3)
  puts "Please enter a number between 0 and 100."
  num = gets.chomp.to_i
  loop do
    if num < 0
      puts "Please enter another number between 0 and 100"
      num = gets.chomp.to_i
    else
      break
    end
  end
  number_line_if(num)
end

def question4
  question(4)
  prompt("1. 'FALSE'")
  prompt("2. 'Did you get it right?'")
  prompt("3. 'Alright now!'")
end

def question5
  question(5)
  puts "Please enter a number between 0 and 100."
  num = gets.chomp.to_i
  loop do
    if num < 0
      puts "Please enter another number between 0 and 100"
      num = gets.chomp.to_i
    else
      break
    end
  end
  number_line_case(num)
end

def question6
  question(6)
  prompt("You get this error because the program(and more specifically a method in our case) is missing and end-of-input somewhere.  You can fix this by closing the if statement within the equal_to_four method by putting and 'end' after the else statement.")
end

question1
question2
question3
question4
question5
question6
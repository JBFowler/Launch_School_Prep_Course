# Answers to Ch1 (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

def factorial(num)
  total = num * (num - 1)
  num = num - 2
  loop do
    if num > 1
      total = total * num
      num -= 1
    else
      prompt(total)
      break
    end
  end 
end

def question1
  question(1)
  prompt("Joe " + "Fowler.")
end

def question2
  question(2)
  number = 1234
  prompt("Our number is #{number}.")
  thousands = number/1000
  hundreds = number%1000/100
  tens = number%100/10
  ones = number%10
  prompt("The thousands number is #{thousands}.")
  prompt("The hundreds number is #{hundreds}.")
  prompt("The tens number is #{tens}.")
  prompt("The ones number is #{ones}.")
end

def question3
  question(3)
  movies = { :gladiator => "2000", :toy_story_3 => "2012", :inside_out => "2015", :interstellar => "2014" }
  movies.each { |key, value| prompt("Year of #{key.to_s.split('_').map(&:capitalize).join(" ")}: #{value}") }
end

def question4
  question(4)
  dates = ["2000", "2012", "2015", "2014"]
  dates.each { |date| prompt(date) }
end

def question5
  question(5)
  prompt("5 Factorial is: ")
  factorial(5)
  prompt("6 Factorial is: ")
  factorial(6)
  prompt("7 Factorial is: ")
  factorial(7)
  prompt("8 Factorial is: ")
  factorial(8)
end

def question6
  question(6)
  prompt("The square of 3.21 is: ")
  prompt("#{3.21*3.21}")
  prompt("The square of 11.2 is: ")
  prompt("#{11.2*11.2}")
  prompt("The square of 6.89 is: ")
  prompt("#{6.89*6.89}")
end

def question7
  question(7)
  prompt("The following error message tells me that a closing parenthesis was used instead of a closing bracket on line 2 of an irb console.")
end

question1
question2
question3
question4
question5
question6
question7

# Answers to Ch5 (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

# method used for question 2
def stop_loop
  puts "=> Please enter a number, or type 'STOP' to end the sequence"
  input = gets.chomp
  while input != 'STOP' do
    num = input.to_i * 2
    prompt("Your number times 2 is #{num}")
    puts "=> If you would like to continue, enter another number, otherwise enter 'STOP'."
    input = gets.chomp
  end
  prompt("Thanks for playing!")
end

def countdown(num)
  prompt(num)
  total = num - 1
  if total > 0
    countdown(total)
  else
    prompt(total)
    prompt("Blastoff!")
  end
end

def question1
  question(1)
  prompt("The each method returns the original array, as nothing was altered or asked to be printed within the each method.")
end

def question2
  question(2)
  stop_loop
end

def question3
  question(3)
  a = %w(1 2 3 4 5)
  a.each_with_index { |value, index| prompt("Value: #{value}, Index: #{index}") }
end

def question4
  question(4)
  countdown(6)
end

question1
question2
question3
question4
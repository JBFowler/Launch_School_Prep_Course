# Answers to Ch6 (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

def question1
  question(1)
  arr = [1 ,3, 5, 7, 9, 11]
  prompt("Does the number 3 appear in the array #{arr}?")
  prompt("We run the '.include' method on the array an find that it does indeed exist!") if arr.include?(3)
end

def question2
  question(2)
  arr = %w(b, a)
  arr = arr.product(Array(1..3))
  arr.first.delete(arr.first.last)
  prompt("1. The program will return the integer '1', and 'arr' will have a value of #{arr}.")
  arr = %w(b, a)
  arr = arr.product([Array(1..3)])
  arr.first.delete(arr.first.last)
  prompt("2. The program will return the array '[1, 2, 3]', and 'arr' will have a value of #{arr}.")
end

def question3
  question(3)
  arr = [["test", "hello", "world"], ["example", "mem"]]
  prompt("#{arr.last.first}")
  # Other methods possible
  # arr.each { |array| array.each { |word| prompt("#{word}") if word == "example"}}
  # prompt("example") if arr.last.include?("example")
end

def question4
  question(4)
  prompt("1. Method 1 returns '3'.")  
  prompt("1. Method 2 returns an undefined method error.")  
  prompt("1. Method 3 returns '8'.")  
end

def question5
  question(5)
  prompt("The value of variable a is 'e'.")
  prompt("The value of variable b is 'T'.")
  prompt("The value of variable c is 'A'.")
end

def question6
  question(6)
  prompt("The problem is that 'names['margaret']' is not the proper way to access an index value.  Instead of passing in an integer you are passing in a string.  Instead of putting 'margaret' as the argument, you should pass in the number '3' instead.  This will now tell the array to set 'jody' at the number 3 index position.")
end

def question7
  question(7)
  arr = %w(1, 2, 3, 4, 5, 6)
  new_arr = arr.map { |num| num.to_i + 2 }
  p arr
  p new_arr
  gets
end

question1
question2
question3
question4
question5
question6
question7

# Answers to Ch8 (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

# method for question 1
def lab(word)
  if /lab/.match(word)
    prompt(word)
  end
end

def question1
  question(1)
  lab("laboratory")
  lab("experiment")
  lab("Pans Labyrinth")
  lab("elaborate")
  lab("polar bear")
end

def question2
  question(2)
  prompt("The method never uses the .call method, and therefore will not print anything.  It will return a Proc object.")
end

def question3
  question(3)
  prompt("Exception handling is used to rescue code when it's written in a risky manner that will most likely cause an exception to be thrown.")
end

def question4
  question(4)
  def execute(&block)
    block.call
  end

  execute { puts "Hello from inside the execute method!"}
end

def question5
  question(5)
  prompt("It gives the error because we are passing in a parameter that's not a block.  You need to add the ampersand symbol.")
end

question1
question2
question3
question4
question5

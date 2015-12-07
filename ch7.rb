# Answers to Ch7 (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

def question1
  question(1)
  family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
  direct_family = family.select { |key| key == :sisters || key == :brothers }
  prompt("#{direct_family.values.flatten}")
end

def question2
  question(2)
  prompt("merge! will manipulate the actual hash, permanently altering what the hash is made up of.  'merge' on the other hand will only return the altered hash when the method is called, but will not permanently add the new hash into the existing one. ")
  animal_sounds = {dog: "bark", cat: "meow"}
  prompt("Using the merge! method on a hash called animal sounds(#{animal_sounds})")
  animal_sounds.merge!({lion: "Rawr!"})
  prompt(animal_sounds)
  animal_sounds = {dog: "bark", cat: "meow"}
  prompt("Using the merge method on a hash called animal sounds(#{animal_sounds})")
  animal_sounds.merge({lion: "Rawr!"})
  prompt(animal_sounds)
end

def question3
  question(3)
  animal_sounds = {dog: "bark", cat: "meow", lion: "Rawr", horse: "whinnee"}
  animal_sounds.keys.each { |key| prompt(key) }
  animal_sounds.values.each { |value| prompt(value) }
  animal_sounds.each { |key, value| prompt("A #{key} goes #{value}!")}
end

def question4
  question(4)
  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
  prompt("I would access the name of the person using the name key as my accessor, i.e. 'person[:name]'.")
  prompt("#{person[:name]}")
end

def question5
  question(5)
  prompt("I would use the 'has_value?' method to check if a hash has a specific value.")
  animal_sounds = {dog: "bark", cat: "meow", lion: "Rawr", horse: "whinnee"}
  prompt(animal_sounds)
  prompt("animal_sounds.has_value?('bark')")
  prompt("#{animal_sounds.has_value?("bark")}")
end

def question6
  question(6)
  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
  anograms = {}
  words.each do |word|
    key = word.split('').sort.join
    if anograms.has_key?(key)
      anograms[key].push(word)
    else
      anograms[key] = [word]
    end
  end
  anograms.values.each { |value| prompt(value) }
end

def question7
  question(7)
  prompt("'my_hash' uses a symbol as it's key, and 'my_hash2' uses the local variable 'x' as its key.  The variable has the string 'hi there' as it's value, so the key is actually the string 'hi there'.")
end

def question8
  question(8)
  prompt("The correct answer is 'B' because it clearly states you are using a method, which means you are calling '.keys' on some array object.")
end

question1
question2
question3
question4
question5
question6
question7
question8
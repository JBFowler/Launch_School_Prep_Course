# Answers to exercises (Basics of Ruby)

def prompt(msg)
  puts "=> #{msg}"
  gets
end

def question(num)
  prompt("Answer to question #{num}: ")
end

def question1
  question(1)
  arr = %w(1 2 3 4 5 6 7 8 9 10)
  arr.each { |value| prompt(value) }
end

def question2
  question(2)
  arr = %w(1 2 3 4 5 6 7 8 9 10)
  arr.each { |value| prompt(value) if value.to_i > 5 }
end

def question3
  question(3)
  arr = %w(1 2 3 4 5 6 7 8 9 10)
  prompt("#{arr.select { |value| value.to_i.odd? }}")
end

def question4
  question(4)
  arr = %w(1 2 3 4 5 6 7 8 9 10)
  arr << "11"
  arr.unshift("0")
  prompt(arr)
end

def question5
  question(5)
  arr = %w(1 2 3 4 5 6 7 8 9 10)
  arr << "11"
  arr.unshift("0")
  arr.pop
  arr << "3"
  prompt(arr)
end

def question6
  question(6)
  arr = %w(1 2 3 4 5 6 7 8 9 10)
  arr << "11"
  arr.unshift("0")
  arr.pop
  arr << "3"
  arr.uniq!
  prompt(arr)
end

def question7
  question(7)
  prompt("The major difference is that an array is an ordered list of values, while a hash is a semi ordered list but with key and value pairs.")
end

def question8
  question(8)
  hash1 = { :dog => "bark", :cat => "meow" }
  hash2 = { dog: "bark", cat: "meow" }
  prompt(hash1)
  prompt("{ dog: 'bark', cat: 'meow' }")
end

def question9
  question(9)
  h = {a:1, b:2, c:3, d:4}
  prompt("Value of key b in hash h is #{h[:b]}")
  h[:e] = 5
  prompt("Added to hash: #{h}")
  h.delete_if { |key, value| value < 3.5 }
  prompt("Deleted values less than 3.5: #{h}")
end

def question10
  question(10)
  prompt("You can indeed use hash values as part of your array, i.e. {dog: ['bark', 'sniff', 'woof', 'whine']}.  You can also have an array of hashes, i.e. [{dog: 'bark'}, {cat: 'meow'}, {lion: 'roar'}]")
end

def question11
  question(11)
  prompt("I like rails guides the best.  They provide a step by step and in-depth look at building a rails application.")
end

def question12
  question(12)
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  contacts["Joe Smith"][:email] = contact_data[0][0]
  contacts["Joe Smith"][:address] = contact_data[0][1]
  contacts["Joe Smith"][:phone] = contact_data[0][2]
  contacts["Sally Johnson"][:email] = contact_data[1][0]
  contacts["Sally Johnson"][:address] = contact_data[1][1]
  contacts["Sally Johnson"][:phone] = contact_data[1][2]
  prompt(contacts)
end

def question13
  question(13)
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  contacts["Joe Smith"][:email] = contact_data[0][0]
  contacts["Joe Smith"][:address] = contact_data[0][1]
  contacts["Joe Smith"][:phone] = contact_data[0][2]
  contacts["Sally Johnson"][:email] = contact_data[1][0]
  contacts["Sally Johnson"][:address] = contact_data[1][1]
  contacts["Sally Johnson"][:phone] = contact_data[1][2]
  prompt(contacts["Joe Smith"][:email])
  prompt(contacts["Sally Johnson"][:phone])
end

def question14
  question(14)
  key_fields = [:email, :address, :phone]
  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}
  contacts.each do |key, value|
    key_fields.each do |field|
      value[field] = contact_data.shift
    end
  end
  prompt(contacts)

  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  contacts.each_with_index do |(key, value), index|
    key_fields.each do |field|
      value[field] = contact_data[index].shift
    end
  end
  prompt(contacts)
end

def question15
  question(15)
  arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
  arr.delete_if { |word| word.start_with?('s') }
  prompt(arr)
  arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
  arr.delete_if { |word| word.start_with?('s', 'w') }
end

def question16
  question(16)
  a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
  new_array = a.map { |words| words.split(' ') }
  new_array.flatten!
  prompt(new_array)
end

def question17
  question(17)
  prompt("These hashes are the same! The hashes do not share an order, but do share key and values types, which is all that matters in a hash.")
end

question1
question2
question3
question4
question5
question6
question7
question8
question9
question10
question11
question12
question13
question14
question15
question16
question17

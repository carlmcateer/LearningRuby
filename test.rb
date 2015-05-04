=begin
#basic variable decloration
name = 'Carl McAteer'

puts name.length

puts name.reverse

puts name.upcase.reverse

puts name downcase

#Using gets for the first time, chomp is used to cut off the extra line in the cmd prompt
print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!
print "And your last name?"
last_name = gets.chomp
last_name.capitalize!
print "From what city do you hail?"
city = gets.chomp
city.capitalize!
print "Sorry what state is that in?"
state = gets.chomp
state.upcase!

puts "I #{first_name} #{last_name} hearby state that #{city} (the finest town in all of #{state}) it the king of all tawns"

# How to do an if/elsif/else statment (rember how elsif is spelt!)
if 7>6
    puts "What a truth!"
elsif
	puts "Never gona happen!"
else
	puts "Nope"
end

#unless statment runs in all casses except the one declared
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

#True and false opperators, rember when using the const true not to use uppercase!
is_true = (2 != 3 && 7 <= 90) || true # && is the and opperator

is_false = 2 == 3 || (5**2 != 25 && false)  # || is the or opperator

if is_true == !false # the ! is the Not opperator, it changes a true to a false of vice versa
	puts "We did it!"
else
	puts "We done screwed up!"
end

sleepy = true

unless sleepy
    puts "Lets do this"
else
    puts "Next time"
end

print "Gimmee a string? "

user_input = gets.chomp

user_input downcase!

if user_input.include?"s"
    user_input.gsub!(/s/, "th")
    puts "What was that? '#{user_input}'!, you sound like an  dot!'"
else
    puts "Nothing to see here!"
end
# While Loops!
test_counter = 0
while test_counter <=5
	puts "Hi Carl, is this anoying yet?"
	test_counter = test_counter + 1
end

#Untill loop is a backwards while loop, it execuits until a value is true!
until_counter = 1
until until_counter > 10
  puts until_counter
  # Add code to update 'until_counter' here!
  until_counter += 1
end

# For loops look weird!
# ... means less than the value on the right, .. means less than or
#equal to.
#Bellow give the same result
# NB dont forget the 'in'!
for number in 1...16
	puts number
end

for number1 in 1..15
	puts number1
end


num = 50

loop do
	num -= 1
	next if num % 2 == 0 # Returns only odd numbers as it skips the even ones
	puts "#{num}"
	break if num <= 1
end

# Arrays!

array_num = [1,2,3,4,5,6,7,8,9,10]

array_num.each {|i| puts i}

20.times { puts "Hello world!" } # Exicuates whats in the currly braces a specified number of times
i = 0
loop do
    i += 1
    print "Ruby!"
    break if i == 30
end
puts "Say something!"
text = gets.chomp
puts "Take it back!"
redact = gets.chomp

words= text.split(" ")

words.each do |i|
    if i == redact
        print "REDACTED "
    else
        print i + " "
    end
end

my_array = ["Mon","Tues","Wed","Thurs","Fri","Sat","Sun"]

puts my_array[2]

my_big_array = [[["Farts","trains","automobiles"],["Farts","trains","automobiles"],["Farts","trains","automobiles"],["Farts","trains","automobiles"]], [["Farts","trains","automobiles"],["Farts","trains","automobiles"],["Farts","trains","automobiles"],["Farts","trains","automobiles"]], [["Farts","trains","automobiles"],["Farts","trains","automobiles"],["Farts","trains","automobiles"],["Farts","trains","automobiles"]]]

puts my_big_array[4]

# itterating over multidimentional arrays!
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
    sub_array.each do |x|
        puts x
    end
end

#example of a hash and itterating over the hash

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |name, order|
	puts "#{name} wants #{order}"
end
# Creats a hash table of all the words in a string and thend prints out the frequency of each word
#could be a usefull base for some data crunching like he rapper list

puts "Gimme Text: "

text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each do |x|
    frequencies[x] +=1
end

frequencies = frequencies.sort_by do |word, x|
    x
end

frequencies.reverse!

frequencies.each do |x ,y|
    puts x + " " + y.to_s
end


#first method(function)
def hello
	puts "Hello world, it great to see you"
end

hello

def square(n)
	puts n*n # Does not work because gets returns a string
end

puts "Gimme a number, I dare you!"

number = gets.chomp

square(number) # Does not work because gets returns a string


# example of the sort method
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
my_array.sort!

puts my_array

my_array1 = [1, 2, 3, 4, 5]

my_array1.each {|i| puts i*i}

#How to use a block to sort in reverse aphabetical order
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! { |y,x| x <=> y}

fruits.each { |i| puts i }

#method for sorthing an array in assending or desending order
def alphabetize (arr, rev = false)
    arr.sort!

    if rev
        return arr.reverse!
    else
        return arr
    end
end

numbers = [1,8,3,56,4]

puts alphabetize(numbers)
puts alphabetize(numbers, true)

#First lesson about symbols
my_first_symbol = :symbol

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = []

strings.each do |s|
    s = s.to_sym # note how this works, must assign new value to s, not transform it
    symbols.push(s)
end


require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# learning to use the select method to filter through key value pairs

good_movies = movie_ratings.select {|x , y| y > 3}

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Symple way to print all keys
movie_ratings.each{ |x, y| puts x}
# The start of Add Update Display Delete  V1
movies ={
    'Upstream Color' => 4
    }

puts "Type Something"

choice = gets.chomp

case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

# V2, Also its called CRUD, create, read, update, delete

movies ={
    jaws: 4
    }

puts "Type Something"

choice = gets.chomp

case choice
when "add"
    puts "Type a movie!"
    title = gets.chomp
    puts "Rate it from 1 to 4"
    rating = gets.chomp
    if movies[title.to_sym].nil? == true
        movies[title.to_sym] = rating.to_i
    else
        puts "That movie is already in the database"
    end
when "update"
    puts "Type a movie!"
    title = gets.chomp
    if movies[title.to_sym].nil? == true
        puts "Error, movie not found"
    else
        puts "Update rating from 1 to 4"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each do |movie,rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Type a movie!"
    title = gets.chomp
    if movies[title.to_sym].nil? == true
        puts "Error!"
    else
        movies.delete(title)
    end
else
    puts "Error!"
end
# if and if or unless statment only check for a bool then it can
#be on one line, for example
# A more consise way to write an if and unless
rich = true

puts "Commie, No!" if rich

taraNotGreat = false

puts "Tara is great!" unless taraNotGreat

#an example of a "tyranry conditional expression"
#if confused google it
puts 1>0? "One is great! Zero sucks!": "Zero is number one!"

# A Switch is called a case in Ruby, it looks like this
puts "Hello there!"
puts "What language do you speek"
greeting = gets.chomp

case greeting
    when "English"
        puts "Hello!"
    when "French"
        puts "Bonjour"
    when "German"
        puts "Guten Tag!"
    when "Finnish"
        puts "Haloo!"
    else
        puts "I dont know that language!"
end
# ||= is the conditional assignment opperator, it is used to
# assign a value to a viarable if it has not been assigned something
# already
favorite_language ||= "ruby"
puts favorite_language
# in Ruby you dont need to write return!
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

#if a value is going to be false then ruby does not evaluate
#everything
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

#example of the each method and the one line if
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|x| puts x if x % 2 == 0}

# Example of .upto and .downto methods

"A".upto("Z") { |x| puts x}
# "Z".downto("A") { |y| puts y} ## Does not work!
# Ruby has no .downto method for strings, below is a work around
"A".upto("Z").to_a.reverse.each { |x| puts x }

=end

age = 24

puts "True" if age.respond_to?(:next) == true

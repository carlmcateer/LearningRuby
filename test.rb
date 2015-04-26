=begin
#basic variable decloration
name = 'Carl McAteer'

puts name.length

puts name.reverse

puts name.upcase.reverse

puts name.downcase

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
=end

print "Gimmee a string? "

user_input = gets.chomp

user_input.downcase!

if user_input.include?"s"
    user_input.gsub!(/s/, "th")
    puts "What was that? '#{user_input}'!, you sound like an idot!'"
else
    puts "Nothing to see here!"
end
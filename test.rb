name = 'Carl McAteer'

puts name.length

puts name.reverse

puts name.upcase.reverse

puts name.downcase

print "What's your first name?"
first_name = gets.chomp.capitalize!
print "And your last name?"
last_name = gets.chomp.capitalize!
print "From what city do you hail?"
city = gets.chomp.capitalize!
print "Sorry what state is that in?"
state = gets.chomp.capitalize!


puts "I #{first_name} #{last_name} hearby state that #{city} (the finest town in all of #{state}) it the king of all tawns"
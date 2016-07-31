
# if-else 

age = 55

if age < 40
	puts "The person is young"
else
	puts "The person is old"
end


# one line if 

input = 5
output = (input < 0) ? 0 : input

# shorthand

if raining?(here) 
	carry('umbrella' )
end

carry('umbrella') if raining?(here)


# unless

var = false

# same as: if !var
unless var
	puts "Var was false"
end


# switch

car_model = 'mustang'

case car_model
when 'fiesta','mustang'     # grouping case statements
	puts 'Model belongs to Ford'
when 'three'
	puts 'Model belongs to Mazda'
end



# loops

counter = 1

puts "while loop:"

while counter < 10
	puts counter
	counter += 1
end

puts "for loop:"

for i in 0..9 do
	puts i
end


# use hash or dictionary for key-value pairs

puts "foreach loop:"

myHash = {
	"one" => 1,
	"two" => 2,
	"three" => 3
}

myHash.each do |key,value|
	puts "#{key} => #{value}"
end

# example of range and blocks

puts 'each function on a range:'

(0...5).each do |number|
	puts number
end

puts 'upto function on a range:'

0.upto(4) do |number|
	puts number
end


#!/usr/bin/ruby

size = gets.to_i
number_string = gets.strip.split(" ")

#Error Check
abort("Incorrect input") if size != number_string.size

pos_count = 0.0
neg_count = 0.0
zero_count = 0.0

number_string.each do |n|
	if n.to_i > 0
		pos_count += 1		
	elsif n.to_i < 0
		neg_count += 1
	elsif n.to_i == 0
		zero_count += 1
	end
end

puts
puts pos_count/size
puts neg_count/size
puts zero_count/size
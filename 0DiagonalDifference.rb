#!/usr/bin/ruby

matrix = []
size = gets.to_i
(0...size).each do |i|
	list = gets.strip.split(" ")
	numbers = []
	list.each do |number|
		numbers.push(number.to_i)
	end
	matrix.push(numbers)
end

#Left to Right Diag
left_sum = 0
for i in (0...size) do
#	puts matrix[i][i]
	left_sum += matrix[i][i]
end

right_sum = 0
#Right to Left Diag
for i in (0...size) do
#	puts matrix[i][size-i-1]
	right_sum += matrix[i][size-i-1]
end

puts "#{(left_sum-right_sum).abs}"





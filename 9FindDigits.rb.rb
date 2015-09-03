#!/usr/bin/ruby

def find_digit(n)
	number = n.to_i
	count = 0
	n.each_char do |c|
		next if c.to_i == 0
		count += 1 if number%c.to_i == 0
	end
	return count
end

gets.to_i.times do
	n = gets.chomp
	puts find_digit(n)
end
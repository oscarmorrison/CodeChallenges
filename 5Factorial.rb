#!/usr/bin/ruby

n = gets.to_i
sum = 1
while n > 0 do 
	sum *= n
	n -= 1
end

puts sum
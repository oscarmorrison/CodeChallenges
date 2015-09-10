#!/usr/bin/ruby

def check_if_palindrome(input)
	string = input.to_s
	l = string.length
	for i in (0...l/2)
		return false if string[i] != string[l-i-1]
	end
		return true
end

def find_biggest_palindrome(start,finish)
	big = 0
	for i in start.downto(finish)
		for j in start.downto(finish)
			if check_if_palindrome(i*j)
				big = i*j if i*j > big
			end
		end
	end
	return big	
end

puts find_biggest_palindrome(999,100)


#!/usr/bin/ruby
#Decent number following properties
#1) 3,5, or both as its digits. (no other digit allower)
#2) number of times 3 appears is divisible by 5
#3) number of times 5 appears is divisible by 3

def decent_number(n)
	left = 0
	right = 0
	(n+1).times do |i|
		left = n - i 
		right = n - left
	#	puts "#{left}%3 = #{left%3} | #{right}%5 = #{right%5}"
		break if left % 3 == 0 && right % 5 == 0
	end
	#puts "**l = #{left} r = #{right}"

	if left % 3 == 0 && right % 5 == 0
		fives = "5"*left
		threes = "3"*right
		puts fives+threes
	else
		puts -1
	end
end

t = gets.to_i	

t.times do
	n = gets.chomp.to_i
	decent_number(n)
end


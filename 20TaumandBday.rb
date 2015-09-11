#!/usr/bin/ruby
#Taum is planning to celebrate the birthday of his friend, Diksha. There are two types of gifts that Diksha wants from Taum: one is black and the other is white. To make her happy, Taum has to buy B number of black gifts and W number of white gifts.
#
#The cost of each black gift is X units.
#The cost of every white gift is Y units.
#The cost of converting each black gift into white gift or vice versa is Z units.

def calc_min_spend(b,w,x,y,z)
	black_cost = x < (y+z) ? x : (y+z)
	white_cost = y < (x+z) ? y : (x+z)
	return black_cost*b + white_cost*w
end


t = gets.chomp.to_i
t.times do
	b,w = gets.chomp.split(" ").map{|n| n.to_i}
	x,y,z = gets.chomp.split(" ").map{|n| n.to_i}
	puts calc_min_spend(b,w,x,y,z)
end

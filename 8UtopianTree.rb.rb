#!/usr/bin/ruby

# Utopian Tree
#Goes through to growth periods:
#- Spring where it doubles in height
#- Summer where its height is increased by 1m
#
#Input:
#T: number of test cases
#N: number of growth cycles (summer and a spring)

# n = number of cycles
def utopian_tree(n)
	h = 1 # initial sapling height
	for x in (0..n) do 
		if x == 0 
	#		puts "#{x}) - h x 1"
			h = h * 1
	#		puts "#{x}) h = #{h}"
		elsif x%2 == 0
	#		puts "#{x}) - h x 2"	
			h = h + 1
	#		puts "#{x}) h = #{h}"
		else
	#		puts "#{x}) - h + 1"
			h = h * 2
	#		puts "#{x}) h = #{h}"
		end
	end
	return h
end

t = gets.to_i

t.times do 
	n = gets.to_i
	puts utopian_tree(n)
end

#!/usr/bin/ruby

def print_white(x)
	for i in 0...x
		print " "
	end
end

def print_hash(x)
	for i in 0...x
		print "#"
	end
end

def print_staircase(x)
	for i in (1..x) do
		print_white(x-i)
		print_hash(i)
		puts
	end
end

size = gets.to_i
print_staircase(size)
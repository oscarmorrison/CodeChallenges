#!/usr/bin/ruby
t = gets.to_i
t.times do
	n,c,m = gets.split(" ").map {|n| n.to_i}
	chocolates = n/c
	wrappers = chocolates
	while wrappers >= m
		chocolates = chocolates + wrappers/m
		wrappers = wrappers%m + wrappers/m
	end
	puts chocolates
end
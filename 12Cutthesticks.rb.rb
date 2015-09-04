#!/usr/bin/ruby
n = gets.to_i
sticks = gets.split(" ").map {|n| n.to_i}
while sticks.count > 0
	puts sticks.count
	min_stick = sticks.min
	sticks.map! {|n| n - min_stick}
	sticks.delete_if{|n| n <= 0}
end
#!/usr/bin/ruby
def sherlock_squares(a,b)
	return Math::sqrt(b).floor - Math::sqrt(a).ceil + 1
end

gets.to_i.times do
	raw_input = gets.chomp.split(" ")
	puts sherlock_squares(raw_input[0].to_i, raw_input[1].to_i)
end
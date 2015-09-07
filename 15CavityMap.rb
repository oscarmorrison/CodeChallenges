#!/usr/bin/ruby

map = []
n = gets.to_i
n.times do
	numbers = gets.chomp.each_char.map {|n| n.to_i}
	map.push(numbers)
end
new_map = map.inject([]) { |a,element| a << element.dup }

for i in (1...n-1)
	for j in (1...n-1)
		if map[i][j]>map[i][j-1] && map[i][j]>map[i][j+1] && map[i][j]>map[i-1][j] && map[i][j]>map[i+1][j]
			new_map[i][j] = "X"
		end
	end
end

new_map.each do |array|
	array.each do |num|
		print num
	end
	puts
end



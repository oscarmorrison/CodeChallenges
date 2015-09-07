#!/usr/bin/ruby
#Find if a small-grid (matrix) is a sub-grid of a bigger grid
def check_pattern(grid, pattern, r, c, pr, pc)
	for j in (0...pr)
		for i in (0...pc)
			if grid[r+j][c+i] != pattern[j][i]
				return false
			end
		end
	end
	return true
end

#test cases
t = gets.chomp.to_i

t.times do 
	gr,gc = gets.chomp.split(" ").map {|n| n.to_i}
	grid = []
	gr.times do
		grid << gets.chomp!
	end

	pr,pc = gets.chomp.split(" ").map {|n| n.to_i}
	pattern = []
	pr.times do |i|
		input = gets.chomp
		# puts "debug #{input} i = #{i}"
		pattern << input
	end
	result = "NO"
	for r in (0...gr) 
		if grid[r].include? pattern[0]
			index = grid[r].index(pattern[0])
			result = "YES" if check_pattern(grid, pattern, r, index, pr, pc)
		end
	end
	puts result
end
#!/usr/bin/ruby
def print_matrix(matrix)
	matrix.each do |a|
		a.each do |n|
			print "#{n} "
		end
		puts 
	end
	puts
end

def get_matrix(m)
	matrix = []
	m.times do
		line = gets.chomp.split(" ").map{|n|n.to_i}
		matrix<<line
	end
	return matrix
end

def rotate_rings(arr, n)
	m = arr.transpose.transpose
	n.times { rotate_rings_once(m) }
	m
end

def rotate_rings_once(arr)
	nrings = (arr.size/2)
	m = arr.transpose.transpose
	4.times do
		nrings.times { |i| arr[i][i..-i-1] = m[i][i+1..-i-1] << m[i+1][-i-1] }
		rotate_array!(arr)
		rotate_array!(m)
	end
end

def rotate_array!(arr)
	arr.replace(arr.map!(&:reverse).transpose)
end

matrix = [['a','b','c','d'],
['e','f','g','h'],
['i','j','k','l'],
['m','n','o','p'],	
['q','r','s','t']]

#m,n,r = gets.chomp.split(" ").map{|n|n.to_i}
print_matrix(matrix)
print_matrix(rotate_array!(matrix))





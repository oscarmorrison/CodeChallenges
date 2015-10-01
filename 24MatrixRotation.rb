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

def rotate_ring(matrix,s_i,s_j,m,n)
	rotated = matrix.inject([]) { |a,element| a << element.dup }
	for i in (s_i...m)
		for j in (s_j...n)
			case [i,j]
				# Move items on corners
				#Top Left Corner
				when [s_i,s_j]
					rotated[i+1][j] = matrix[i][j]
				#Bottom Left Corner
				when [m-1,s_j]
					rotated[i][j+1] = matrix[i][j]
				#Bottom Right Corner
				when [m-1,n-1]
					rotated[i-1][j] = matrix[i][j]
				#Top Right Corner
				when [s_i,n-1]
					rotated[i][j-1] = matrix[i][j]
				##################	
				# Move other items
				# Top Row
				when proc{|i,j| i == s_i and j>0 }
					rotated[i][j-1] = matrix[i][j]
				# Bottom Row
				when proc{|i,j| i == m-1}
					rotated[i][j+1] = matrix[i][j]
				# Left Column
				when proc{|i,j| i >= 0 and j == s_j}
					rotated[i+1][j] = matrix[i][j]
				# Right Column
				when proc{|i,j| i >= 0 and j == n-1}
				rotated[i-1][j] = matrix[i][j]
				
			end
		end
	end
	return rotated
end

def rotate_matrix(matrix,m,n,r)
	s_i = 0
	s_j = 0
	min = ([m,n].min)/2
	k = 2*n+2*(m-2)-1
	k = r%k
	k.times do
		for t in 0...min
			matrix = rotate_ring(matrix,0+t,0+t,m-t,n-t)
		end
	end
	return matrix
end

def get_matrix(m)
	matrix = []
	m.times do
		line = gets.chomp.split(" ").map{|n|n.to_i}
		matrix<<line
	end
	return matrix
end

#matrix = [['a','b'],
#					['c','d']]
#matrix = [['a','b','c'],
#					['e','f','g'],
#					['i','j','k']]

#matrix = [['a','b','c','d'],
#					['e','f','g','h'],
#					['i','j','k','l'],
#					['m','n','o','p']	]
#					
matrix = [['a','b','c','d'],
					['e','f','g','h'],
					['i','j','k','l'],
					['m','n','o','p'],	
					['q','r','s','t']]

m = matrix.size
n = matrix[0].size

print_matrix(matrix)
print_matrix(rotate_matrix(matrix,m,n,14))



#m,n,r = gets.chomp.split(" ").map{|n|n.to_i}
#print_matrix(rotate_matrix(get_matrix(m),m,n,r))



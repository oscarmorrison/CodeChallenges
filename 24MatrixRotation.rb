#!/usr/bin/ruby
def print_matrix(matrix)
	matrix.each do |a|
		print a
		puts
	end
	puts
end
				
def rotate_matrix(matrix,s_i,s_j,m,n)
	rotated = matrix.inject([]) { |a,element| a << element.dup }
	for i in (s_i...m)
		for j in (s_j...n)
			case [i,j]
				# Move items on corners
				when [s_i,s_j]
					rotated[i+1][j] = matrix[i][j]
				when [m-1,s_j]
					rotated[i][j+1] = matrix[i][j]
				when [m-1,n-1]
					rotated[i-1][j] = matrix[i][j]
				when [s_i,n-1]
					rotated[i][j-1] = matrix[i][j]
				# Move other items
				
			end
		end
	end
	return rotated
end


#matrix = [['a','b'],
#					['c','d']]
matrix = [['a','b','c'],
					['e','f','g'],
					['i','j','k']]

#matrix = [['a','b','c','d'],
#					['e','f','g','h'],
#					['i','j','k','l'],
#					['m','n','o','p']	]					

m = matrix.size
n = matrix[0].size

print_matrix(matrix)
print_matrix(rotate_matrix(matrix,0,0,m,n))
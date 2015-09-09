#!/usr/bin/ruby
def find_capital(numbers,m)
	for i in (0...m)
		return i if numbers[i] == i
	end
		return -1
end

def find_connecting_cities(t,m,city)
	results = []
	for i in (0...m)
		if t[i] ==  city && i != city
#			puts "[#{i}] x"
			results<<i
		else
#			puts "[#{i}] #{t[i]}"
		end
	end
	return results
end

def solution(t)
	m = t.length
	#index and value of capital
	capital =  find_capital(t,m)
	final_output = []
	city_array = []
	city_array<<[capital]

	for i in (0...m)
		temp = []
		city_array[i].each do |city|
			temp += find_connecting_cities(t,m,city)
		end
		city_array<<temp
	end

	final_output = city_array.map {|n| n.length}[1,m-1]
	return final_output

end

# example input
t = [9,1,4,9,0,4,8,9,0,1]

print solution(t)



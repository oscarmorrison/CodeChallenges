#!/usr/bin/ruby

def eval_math(s)
	array = s.split('+')
	multiplication_array =  []
	array.each do |sub_array|
		multiplication_array << sub_array.split('*').inject(1){|sum,v| sum *= v.to_i}
	end
	return multiplication_array.inject(0){|sum,v|sum += v.to_i}
end


# puts eval_math("2+3") # 5
# puts eval_math("12+3") # 15
# puts eval_math("-12") # 16

puts eval_math("2+3*2") # 8 not 10
puts eval_math("2*3+2") # 8 not 10
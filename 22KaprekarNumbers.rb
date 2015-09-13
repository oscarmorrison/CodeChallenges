#!/usr/bin/ruby

#a modified kaprekar number is a positive whole number n 
#with d digits, such that when we split its square into two pieces a right handed piece r with d digits and a left handed piece l with remaining digits. the sum of the pieces are equal to the original number
def kaprekar_num(n)
	return true  if n == 1
	string_n =  (n**2).to_s
	d = n.to_s.length
	l = string_n.length
	if l%2 == 0
		right = string_n[-d..-1].to_i
		left = string_n[0...d].to_i
	else
		right = string_n[-d..-1].to_i
		left = string_n[0...d-1].to_i	
	end
	if (left + right) == n && left != 0 && right != 0
		return true
	else
		return false
	end
end

p = gets.chomp.to_i
q = gets.chomp.to_i

count = 0
for i in p..q
	if kaprekar_num(i)
		print "#{i} "
		count += 1
	end
end
puts "INVALID RANGE" if count == 0


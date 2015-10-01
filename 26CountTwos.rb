#!/usr/bin/ruby

#Count the 2’s between 0 and N.  And every 2 digit counts as a 2, so if N was 7 the answer would be 1 (just the number 2), whereas if n was 23 there would be 7 2’s {2, 12, 20, 21, 22 (this counts for 2), 23}

def count_twos(n)
	count = 0
	(1..n).each{|i| i.to_s.each_char{|c| count+=1 if c=="2"}}
	return count
end

puts count_twos(29)

each 10 adds 1x 2 's
every 


if n>=3*10^(x-1) count+=10^(x-1) 
else if n>=2*10^x-1 && n<3*10^x-1 count+=n-2*10^(x-1)+1
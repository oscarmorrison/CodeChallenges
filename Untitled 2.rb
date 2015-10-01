#!/usr/bin/ruby

i = 6
j = 0

case [i,j] 
when proc{|n,j|j == 0 and n>5}
	puts "Yes Above 5"
else
	puts "NaN"
end
#!/usr/bin/ruby

#Cancel class if > k students present

#input
#t = number of test cases
#test case is two lines
#1) two space separetd integers n & k
#2) n space separated Integers, a1,a2,..an representing arrival time of students
# if arrival time a <= 0, student enters before class starts
# if arrival time a > 0, student enters after class (is late)

# n = number of student, k = number present needed for class

#YES - if cancelled, NO - if class is on

#input
t = gets.to_i
(0...t).each do
	n = 0
	k = 0
	raw_input_one = gets.split(" ")
	n = raw_input_one[0].to_i
	k = raw_input_one[1].to_i
	arrival_times = gets.split(" ")

	#process
	on_time = 0
#	i = 0
	arrival_times.each do |a|
		on_time += 1 if a.to_i <= 0 
	end

	#output
#	puts "\n\nDebug: \nk = #{k}\nn = #{n}\non_time = #{on_time}\n\n"
	if on_time >= k
		puts "NO"
	else
		puts "YES"
	end
end

















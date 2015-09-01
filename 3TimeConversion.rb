#!/usr/bin/ruby
raw_time = gets.chomp
size = raw_time.size
period = raw_time[size-2..size]
if period.upcase == "PM"
	if raw_time[0..1] == "12"
			puts raw_time[0..size-3]
	elsif raw_time[0] == "0"
		print "#{raw_time[1].to_i+12}#{raw_time[2..size-3]}"
	elsif
		print "#{raw_time[0..1].to_i+12}#{raw_time[2..size-3]}"
	end
elsif period.upcase == "AM"
	if raw_time[0..1] == "12"
			print "00#{raw_time[2..size-3]}"
	elsif
			puts raw_time[0..size-3]
	end
else
	abort("incorrect input")
end
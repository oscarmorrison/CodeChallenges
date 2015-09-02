#!/usr/bin/ruby
#Sample Input
#DD MM YYYY
#09 06 2015
#06 06 2015

## Input
return_date = gets.split(" ")
due_date = gets.split(" ")

return_day = return_date[0].to_i
return_month = return_date[1].to_i
return_year = return_date[2].to_i

due_day = due_date[0].to_i
due_month = due_date[1].to_i
due_year = due_date[2].to_i

## Process
# Book is not late

# Case 1
if (return_day <= due_day && return_month <= due_month && return_year <= due_year) || (return_month < due_month && return_year <= due_year)|| (return_year < due_year)
	puts 0
end

#Case 2
if return_day > due_day && return_month == due_month && return_year == due_year
	puts 15*(return_day-due_day)
end

#Case 3

if return_month > due_month && return_year == due_year
	puts 500*(return_month-due_month)
end


#Case 4
puts 10000 if return_year > due_year
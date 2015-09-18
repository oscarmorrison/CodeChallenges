#!/usr/bin/ruby

file = File.open("25in.txt","r").readlines

##Count all the amount of letters in file
#letter_count = Hash.new(0)
#file.each do |line|
#	line.gsub(/\s|[^a-zA-Z]/,'').downcase.each_char do |char|
#		letter_count[char] = letter_count[char] + 1
#	end
#end
#letter_count.sort_by{|k,v|-v}[0..10].each{|k,v| puts "#{k}: #{v}"}

##Count occurences of single word in file
word_count = Hash.new(0)
file.each do |line|
	line.gsub(/[^a-zA-Z ]/,'').downcase.split(' ').each do |word|
		word_count[word] += 1 if word.length>0
	end
end
word_count.sort_by{|k,v|-v}.each{|k,v| puts "#{k}: #{v}"}
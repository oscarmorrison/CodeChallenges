#!/usr/bin/ruby
def encrypt(text)
	text = text.gsub(/\s+/, "")
	l =  text.length
	r = (l**0.5).floor
	c = (l**0.5).ceil
	for i in (0...c)
		while i < l 
			print text[i] 
			i += c
		end
		print " "
	end
end
text = gets.chomp
encrypt(text)

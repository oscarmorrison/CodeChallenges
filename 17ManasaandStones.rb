def calc_minosa(n,a,b)
	if a > b 
		temp = b
		b = a
		a = temp
	end
	array = []
	for i in (0...n)
		output =  a*(n - i - 1) + b*(i)
		unless array.include? output
			print "#{output} "
			array<<output
		end
	end
	puts
end

t = gets.chomp.to_i
t.times do 
	n = gets.chomp.to_i
	a = gets.chomp.to_i
	b = gets.chomp.to_i
	calc_minosa(n,a,b)
end
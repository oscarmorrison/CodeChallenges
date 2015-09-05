#s = string
#k = number to rotate
#n = string length

def caesar_cipher(string,k)
	k = k % 26
	low_alpha = "abcdefghijklmnopqrstuvwxyz"
	upp_alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	low_case_max = 122
	upp_case_max = 90
	string.each_char do |c|
		if low_alpha.include? c
			val = c.ord + k
			val -= 26 if val > low_case_max
			print val.chr	
		elsif upp_alpha.include? c
			val = c.ord + k
			val -= 26 if val > upp_case_max
			print val.chr	
		else
			print c
		end
	end
end

t = gets.to_i
string = gets.chomp!
k = gets.to_i

caesar_cipher(string,k)

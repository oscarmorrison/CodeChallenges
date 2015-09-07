#!/usr/bin/ruby

sentence = "sdfhoscaroijasdoijasdijdsoijasdoijasdiojfuhfuh"
sentence2 = "asdoadsijoscarmorrisonasdsad"
key = "oscar"


def search(sentence, key)
	n = sentence.length
	l = key.length
	i = 0
	while i < n
		j = 0
		while j < l && sentence[i]==key[j]
			i += 1
			j += 1
			if j == l
				index = i - l
				puts sentence[index, l]
				return index
			end
		end
		i += 1
	end
	return -1
end


#puts search("asdiaodshello", "ll")
puts search("blasdhalsdhelloasdasd","b")

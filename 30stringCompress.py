string = "aaaabbbccaaa"

def compress(string):
	compressed = ""
	character = string[0]
	count = 1
	for i in range(1,len(string)):
		if string[i] == character:
			count += 1
		else:
			compressed += str(count)+character
			character = string[i]
			count = 1
	compressed += str(count)+character
	return compressed
		
print(compress(string))
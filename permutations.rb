def permute(str,a = '')
	if str.size == 0
		puts a
	end
	str.each_char.with_index do |char,index|
		s2 = str.delete(char)
		permute(s2,char+a)
	end
end
#permute(gets.chomp)
permute("abc")


puts "_____________________________________________________________________"
#program to find how many words or numbers can be written from a given word or letter(number of permutations.)

def noof_permutations(string)
	numerator = fact(string.length)
	denominator = noof_words(string)
	print "Number of possible permutation for the word #{string} is " 
	noofpermutation = numerator/denominator
	p noofpermutation
end


def noof_words(str)#find repeated letters
	n= str.length
	letter_hash=Hash.new(0)
	str_array = str.split("")
	str_array.each do |letter|
		if letter_hash[letter] == 0
			letter_hash[letter] = 1
		else
			letter_hash[letter]= letter_hash[letter]+1
		end				
	end
	keys = letter_hash.values
	puts keys
	npr(keys)
end

def npr(no)#find denominator for finding permutation by 
	final_value = 1
	no.each do |value|
		final_value = final_value*fact(value)
	end
	return final_value
end

def fact(number)#finds factorial of the number
	if number <= 1
		return 1
	else
		number*fact(number-1)
	end
end

noof_permutations("tennessee")
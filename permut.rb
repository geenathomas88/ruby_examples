def permute(str,a = '')
if str.size == 0
puts a
end
str.each_char.with_index do |char,index|
s2 = str.delete(char)
permute(s2,char+a)
end
end
permute("abcd")

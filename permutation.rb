def permute(str, prefix = '')
  if str.size == 0
    puts prefix
    #return
  end
  str.each_char.with_index do |char, index|
		s1 = str[index].chr
		s2 = str.delete(s1)
    permute(s2, prefix + char)
  end
end

 permute("abcd")

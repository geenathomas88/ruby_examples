class String
  def remove_char_at(index)
    return self[1..-1] if index == 0
    self[0..(index-1)] + self[(index+1)..-1]
  end
end

def permute(str, prefix = '')
  if str.size == 0
    puts prefix
    #return
  end
  str.each_char.with_index do |char, index|
		
    permute(str.remove_char_at(index), prefix + char)
  end
end

 permute("abcd")

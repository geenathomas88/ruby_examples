def permutations li
	if li.length < 2
		yield li
	else
		li.each do |element| 
			permutations(li.select() do |n|
		 		n != element
			end ) do |val|
		 		yield([element] << val)
			end
		end
	end
end

permutations(['a','b','c','d']) do |n| 
	print n
	puts
end



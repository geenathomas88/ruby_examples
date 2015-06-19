#Find highest number in an integer array
 array = %W{11 2 3 4 5 6 7 8 19}
 high = 0
 array.each do |n|
   n = n.to_i
   high = n if n > high
 end
 puts high

#get some input and find odd or even.
	#first give the number of inputs, then give the inputs,. all in new lines.
 count = gets.chomp.to_i
 numbers= []
count.times do
	numbers << gets.chomp.to_i
	end
numbers.each do |number|
	if(number%2 == 0)
		puts "Even"
	else
		puts "Odd"
	end
end
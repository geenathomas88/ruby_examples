#1.1) string # => "My first string" string.slice(3, 5) = ?

string ="My first string"
puts string.slice(3,5)
puts "-----------------------------------#-------------------------------------------"
#answer: first

#3) To remove last character of string?

string1 ="December"
puts string1.chop
puts "-----------------------------------#-------------------------------------------"
#answer: Decembe

#4)how to find smallest element of an array?

array =[1,3,5,7,2]
puts array.min
puts "-----------------------------------#-------------------------------------------"
#answer: 1

#5)List a directory?
#puts Dir.open("/home/geena/workspace"){|x| x.each{|d| puts d}}

#2) Fibonacci program upto 10
puts "fibanocci series without recurssion"
def fib(n)
	cur =0
	suc =1
	n.times do |i|
		cur, suc= suc, suc+cur
	end	
	return cur
end
100.times do |i|
	puts fib(i)
end

puts "-----------------------------------#-------------------------------------------"
puts "fibanocci series with recurssion"

puts "Fibanocci number corresponding to the given number"
def fibanocci(n)
	if n<= 1
		return n
	else
		a = fibanocci(n-1)+fibanocci(n-2) if n > 1
	end
	
end
puts fibanocci(8)


puts "-----------------------------------#-------------------------------------------"
def fibanocci(n)
	if n<= 1
		return n
	else
		a = fibanocci(n-1)+fibanocci(n-2) if n > 1
	end
	
end
puts "fibanocci series to 10"
10.times do |i|
	puts fibanocci(i)
end

puts "-----------------------------------#-------------------------------------------"
def f(n)
	y = 0
	n.times do |x| 
		if y < 100
			x, y = y + x, x
		end
	return y
	end
end

puts f(10)
puts "-----------------------------------#-------------------------------------------"
class String
def sc
	split(//).sort_by{rand}.join(' ')
end
end
puts "I was a normal string".sc
puts "-----------------------------------#-------------------------------------------"

#prime numbers
require 'mathn'
prime= Prime.new
prime.each{|x| puts x; break if x>15;}
puts "-----------------------------------#-------------------------------------------"

#increment array
a= [1,2,3,4]
puts "iterate"
a.collect {|x| puts x}
puts "increment"
a.each {|x| puts y =x+1}
puts "-----------------------------------#-------------------------------------------"

#reverse and sort array
t =[2,3,4,5,1]
puts "Reverse", t.reverse
puts "sort", t.sort
puts "-----------------------------------#-------------------------------------------"
#1.1) string # => "My first string" string.slice(3, 5) = ?

string ="My first string"
string.slice(3,5)
#answer: first

#3) To remove last character of string?

string1 ="December"
puts string1.chop
#answer: Decembe

#4)how to find smallest element of an array?

array =[1,3,5,7,2]
puts array.min
#answer: 1

#5)List a directory?
puts Dir.open("/home/geena/workspace"){|x| x.each{|d| puts d}}

#2) Fibonacci program upto 100
def fib(n)
cur =1
suc =0
n.times do |i|
cur, suc= suc, suc+cur
end
return cur
end
100.times do |i|
puts fib(i)
end

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

class String
def sc
split(//).sort_by{rand}.join(' ')
end
end
puts "I was a normal string".sc

require 'mathn'
prime= Prime.new
prime.each{|x| puts x; break if x>15;}

a= [1,2,3,4]
a.collect {|x| puts x}
a.each {|x| puts y =x+1}

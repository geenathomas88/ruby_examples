#different cases in string
orginal ="Hello this is a ruby assignment for geena"
puts orginal.upcase
puts orginal.downcase
puts orginal.swapcase
puts orginal.capitalize

#to find the class of an object
a ="a place"
c= a.class
puts a.class
if c == "String"
puts "yes"
end
u=45
puts u.class

#date manipulation
puts "Date and time is ",Time.now
puts Time.now.strftime('%d\%m\%y')
require 'date'
puts Date.today

#printing elements in an array
array=%q["a", "s", "c","a"]
array.each do |a|
puts a.scan(/\w+/)
end

#reversing an array
puts array.reverse
puts array.sort_by{|x| x.size}

#sorting an array, remove the duplicate elements
t =[1,2,3,4,5,1,2]
puts t.uniq!
puts t.sort_by{rand}

#file operations
File.open("new.rb","w")
puts "This is a new line"

#fibanocci series
puts "Fibanocci series"
def fib(n)
cur =1
suc =0
n.times do |i|
cur, suc= suc, suc+cur
end
return cur
end
10.times do |i|
puts fib(i)
end

$:.each{|d| puts d}


x = 10
y = 11
z = if x < y
  'true'
else
  'false'
end
puts "answer",z 

#collect
x=[1,2,3,4]
puts "collect", x.collect{|c| c*2}

#inspect
puts "inspect",x.inspect
p x
a=1
b=2
puts '#{a+b}'

#tainted and untainted objects
x=1
puts x.tainted?
y1 = ENV["HOME"]
y2 = y1[2, 4]
puts y2.tainted?

#print buffers
2.times{
puts "5"
#print "5"
#sleep(2)
}

puts "Enter email"
e=gets
c=e.split(/\.|\@|\?|!/) 
i=0
if c.length ==3
 c.each do |a|
#puts c[i]
 d=c[i]
if /\w/.match(d)
  i=i+1
 else 
  puts "sorry"
  break
 end
end
end

x=gets
puts x.scan(/\@&\./).empty?
y=x.split(/\.|\@/)
y.each do |z|
if /\w/.match(z)
puts "this is a mail id"
else
puts "sorry"
end
end

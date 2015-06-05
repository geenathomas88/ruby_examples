#string manipulation

text=%q[there is a meeting.
please come?
fire beware.
]
text.split(/\.|\?|!/) do |a|
puts a
end 

#procedures
def ans(a)
Proc.new{|b| b*a}
end
puts "3*2",ans(3).call(2)
puts "2*2*2*2",ans(ans(2).call(2)).call(2)

#chomp method
a= "now"
puts a.chomp "w"

#Math constants
puts Math.constants
puts "Using math constants",22*Math::PI

#using eval
s ="value"
puts "using eval"
puts eval "s +' of'"


#A procedure
def function
f=Proc.new {
puts "enter a number"
a=gets
puts "enter the second number"
b=gets
a.to_i+b.to_i
}
f.call 
end
puts function
#q= Time.now().str
#puts q

#Date mnipulation
require "date"
q="{2010, 4, 15}"
s=Date.parse(q.gsub(/, */,"-"))
puts "parse date", s

a=Time.now.strftime("%d%B%Y")
b=Time.gm("2010/3/1").strftime("%d%B%Y")
puts a
puts b


s = "06/07/2008"
print Date.parse(s)
p Date.parse(s)
puts Date.parse(s)


puts 2.gcd 6
puts gcd2(9)

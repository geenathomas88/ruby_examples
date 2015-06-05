#string manipulation
#split method on array

text=%q[there is a meeting.
please come?
fire beware.]

w=text.split(/\.|\?|!/) 
puts w.length

#split method on string
q= "This is a test".split(/\s/)
puts "length",q.length

#strip
puts "This is a string".ljust(29, "1289")
puts "This is a string".scan(/\w+/)
puts "   This is a string".lstrip
puts "this i s gghjj".center(40, '123')
#send and recieve messages in ruby
class Sibling
def ask
puts "hi"
end
end
Sibling.new.send(:ask)

gem=['emerald', 'ruby', 'rem', 'pearl']
puts gem.detect{|g| /^r/=~g}
exa={}
exa['sweet']='gems'
puts exa.length
#puts exa.methods-Object.methods
puts 2901.05.truncate

str="yellow  moon"
puts str.squeeze(" ")
#puts str.squeeze!("your")

puts 230.chr

#ayyay.length is preffered over array.size
l=[5,6]
puts 1.size
puts [5,6].size
puts [1].length
#puts 1.length




puts "yellow".intern
puts "yellooww  moon".squeeze!#occurenc eof the same character is replaced by a single one
puts " after squeeze"," now it  is tym ".squeeze(" ")
puts "yeaaloow moon".squeeze("a-c")#squeezes dose specified
 a = "hello there"
puts a.count "lo"  

#puts a[3]
# tr: replaces any occurence of aeiou with *
puts a.tr("^aeiou", "*")#replaces all characters except listed after^

puts "slice",a.slice(1..6)
puts a

#text wrap
def wrap_text(txt, col = 80)
txt.gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3\n")
 end

txt= "Lorem ipsum dolor sit amet, <pre>consectetur</pre> adipisicing elit, sed do eiusmod tempor <pre class='longlatinwordicus'>incididunt</pre> ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo <a href='longlatinwordicus'>consequat</a>. Duis aute irure dolor in <pre class='longlatinwordicus'><code>reprehenderit</code></pre> in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

puts wrap_text(txt)

#gives the first letter
putc (txt)

q=["q", "w", "e"]
#pretty_print(q)
puts require 'pp'
pp "Using pretty print",q

#pack and unpack
puts "pack", q.pack("a3a3a3")
r=[65,66,67]
puts r
puts "whole".unpack("xax2aX2aX1aX2a")
puts "now 35 =is".unpack("m*")

#conversion
s='cat'.to_sym
puts s.class
puts s==:cat

#zip method
a=[3,4,9]
b=[4,5,6]
x=[1,2,3].zip(b,a)
puts "after zip",x

#union method
y=[1,4,6]
puts "set",x|y

#fetches the third index
c=['m','n','o','p']
puts c.fetch(3)
a=["a","s","d","w"]
puts "index"
puts a.index("d")

#use fill to set selected elements to specified
puts c.fill("m")
puts "this replaces with q",c.fill("e", 1..2 )
c.fill{|e| puts e*e}
puts c

#reverse and reverse each
a=["q","d","a","d"]
puts a.reverse
a.reverse_each{|c| puts c}
w=[12,13,21,3]
puts "this is w",w
w.replace(["q", "w"])
puts "new w",w

#inspect, collect, map
q=%w{a b c d}
puts q.inspect
q.map{|p| puts p}
q.collect{|p| puts p}
puts "q with collect!"
q.collect!{|p| puts p+'@'}
puts q.nitems
q.map{|p| puts p}

#files and directories
puts Dir.pwd
puts Dir.chdir('/home/geena')
puts Dir.entries('/home/sysnet').join(",")
a=[[1, "one"], [2,"two"]]
puts a.rassoc("one")
a=[1,2,3,4,56,7,7,]
puts a.values_at(1)

s="1,2,3,this, is stes"
puts "split", s.split(/,*/,4)

#find the longest word
longest=%w{my name}.inject do |word, long|
puts word.length
word.length>long.length ? word : long
end
puts longest

#find the length of the longest word
longest = %w{ cat sheep bear }.inject(0) do |memo,word|
memo >= word.length ? memo : word.length
end
puts longest  

#sorting of hashes
require 'pp'
h={1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six"}

puts h.invert.inspect
puts h.inspect
x= h.select{|k,v|k>2}
puts x.inspect
puts h
puts h.sort.inspect
pp h
h.each {|key, value| puts "#{key}=>#{value}"}


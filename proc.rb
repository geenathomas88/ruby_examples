require 'date'
#using strftime
puts "Time using strftime",Time.utc(2010, 12, 1).strftime("%d/%m/%y")
puts Time.new.strftime("%d/%m/%y")

time1=Time.new
puts time1.year
puts "look", time1.strftime("%d/%m/%Y")
time2= Time.gm("2006/2/1")
puts "looks", time2.strftime("%Y/%m/%d")
puts time2.year-time1.year
time3=time2.strftime("%d%m%Y")
time_now=time1.to_i-time3.to_i
puts time_now
now=Time.now
puts "this is now", now
puts "this is 10 plus now"
p now+360


puts time2.strftime("%d%m%Y")
puts Time.gm("2010/12/2")
w=Time.new
puts w.strftime("%l:%M %p")
y2 = DateTime.new(2011, 12, 1).year
puts "y2+1",(y2 + 1).to_s
y3 =Time.gm(2010, 12, 1)
puts y3
puts "y3+1",(y3+1).to_s

#string to date
puts "string to date", DateTime.parse('2007-04-04')
puts "Today",Date.today
time=Time.now
puts "Time", time
puts "Time in array", time.to_a 
v=time.to_a 
puts "UTC", Time.utc(*v)
puts "Local",Time.local(*v)
puts "This", Time.at(time)

#to find the difference in dates
now = Date.today
puts now
before = Date.civil(2010, 1, 1)
puts before
difference_in_days = (now - before).to_i
puts "#{difference_in_days} days"
puts (difference_in_days/12).to_i
if difference_in_days>365
puts "#{(difference_in_days/365).to_i} year"
else 
puts "#{difference_in_days} days only, not even a year"
end

d=Time.now
puts d.year
e=Time.gm("12/12/2012")
puts e.year
if e<d
difference=d.year-e.year
else
difference =e.year-d.year
end
puts "difference b/w dates",difference

puts "time with new", time1
puts time1.year
puts time1.day
puts time1.month
 
f='12/12/2010'
puts "parsing", Date.parse(f)

q="{2010, 4, 15}"
s=Date.parse(q.gsub(/, */,"-"))
puts "parse", s
puts "using strptime",Date.strptime('28/03/2008', '%d/%m/%Y')
puts "using strftime",Time.gm(1/1/2010).strftime('%d/%m/%Y')
 
#insert into a string
string="this is string"
string.insert 8, "a "
puts string
a=DateTime.now
now1=a.strftime('%Y,%m,%d')
puts now1
b=Date.today()
now2=b.strftime('%Y,%m,%d')
puts now2
puts b.strftime('%A')

#b_day=Date.civil(1988, 9, 14)
#a=gets
#puts a.class
now=Date.today
puts now.class 
b_day=Date.civil(1988, 9, 14)
now=Date.today

days=(now-b_day)/365

puts sprintf("%0.2f",days)
puts Time.at(100)

#puts Time.at(300)


day=DateTime.new(2009, 11, 27)
days=(day..day+6)
puts "answer"
days.each{|d| puts "#{d.strftime("%a")}"}

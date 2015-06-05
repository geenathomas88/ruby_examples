#date manipulation
require 'date'
now = Date.today
puts now
before = Date.civil(2010, 1, 1)
puts before
difference_in_days = (now - before).to_i
puts "#{(difference_in_days/30).to_i} months"
puts "#{difference_in_days} days"
if difference_in_days>365
puts "#{(difference_in_days/365).to_i} year"
else 
puts "sorry #{difference_in_days} days only, not even a year"
end

#iteration over dates
puts "Date after #{DateTime.new(2010, 11, 1)}"
date=(Date.new(2010, 10, 1)..Date.new(2010, 12, 1))
date.each do 
|a|
if (a>Date.new(2010, 11, 1))
puts a
end
end

puts Time.local(2006, 10, 1)
#day light saving time
puts Time.utc(2010, 3, 14).isdst
puts Time.local(2007,7,1).isdst
#time between two specified
t1=Time.new
puts t1.hour
t2=Time.local(2010, 12, 13,16,1)
puts "year",t2.hash
t=(t2..t1).each do |a| 
if a<Time.local(2010, 12, 13, 17, 15, 1)
puts a.strftime("%H, %M")
end
end
require 'time'
#httpdate method returns date in string
t='Tue, 05 Sep 2006 16:05:51 GMT'
puts "httpdate",Time.httpdate(t)

#convert to array,float
puts t.to_a
puts "10.5f"%t.to_f

#iso8601
r='2010-12-10T19:23:17.201Z'
puts "using iso8601",Time.iso8601(r)
#step method
puts "step",Date.today.step(30)
puts Time.parse("9/14")
puts Time.now.yday
puts Time.now.year

puts Time.gm(2010,12,10)
puts Time.utc(2010,12,10,3,12,1)
puts "uding to-s",Time.local(2010, 12,10).to_s
#t=Time.local(2010, 12,10)

puts "mktime", Time.mktime(2010, 2,1)
f=t1+2000
puts t1<=>f
puts f._dump
puts Time.now-(t.to_f)

t=Time.now
puts t.strftime("%d/%m/%y")

today=DateTime.new(2004, 4, 2)
other= DateTime.new(2006, 7, 9)
puts "#{other.year- today.year}years #{other.month-today.month}months #{other.day-today.day}days"
y=Time.gm(2010, 12, 1)
puts y.class
r=y.inspect
puts "Using inspect",r.class 
y3 =Time.gm(2010, 12, 1).strftime("%d%m%Y").to_i
#y3=Time.gm(2010, 12, 1).to_s
puts y3.class
y2=Time.gm(2005, 4, 30).strftime("%d%m%Y").to_i
puts y3-y2
a= DateTime.parse('2007-04-04')
b= DateTime.parse('2009-04-04')
puts b-a


now = Date.today
puts now
before = Date.civil(2010, 1, 1)
difference_in_days = (now - before).to_i
puts "difference_in_days",difference_in_days.to_i
puts (difference_in_days/365.25).to_i
puts "step",Date.today.step(30)


puts '06/15/2008'.to_date
class Time
def to_date(str)

date_array = str.split("/")

new=Date.new(date_array[2].to_i, date_array[0].to_i,date_array[1].to_i) 
puts new
puts new.class
end
end
to_date('10/10/2010')

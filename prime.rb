#prime numbers
puts "Prime numbers"
j = Numeric.new
puts "2"
puts "3"
(4..50).each do |i|
(2..(Math.sqrt(i).ceil)).each do
|k|
j = 1
if (i.divmod(k)[1] == 0)
j = 0
break
end
end
puts "#{i}" unless (j == 0)
end 

#fibanocci series
puts "fibanocci series"
def fib(n)
if n<2
n
else
n=fib(n-1)+fib(n-2)
end
end
10.times do |x|
puts fib(x)
end

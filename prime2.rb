#prime number
require 'mathn'
include Math

puts "enter the number to be checked"
a=gets
a=a.to_i
puts "prime" if a==2||a==3
for i in(2..(sqrt(a)))
    r=a%i
    if(r==0)
     puts "not prime"
     break
    else
     puts "prime"
    break
    end
 end
  



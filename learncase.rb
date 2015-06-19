#menu driven program
puts "Enter your choice"
puts "1.addition\n2.subtraction\n3.multiplication\n4.division\n"
a=gets
puts"enter a number"
$num1=gets
puts"enter the second number"
$num2=gets
arithmetic=a.to_i
case arithmetic
when 1 :puts "sum is:#{$num1.to_i+$num2.to_i}" 
when 2 :puts "difference is:#{$num1.to_i-$num2.to_i}"
when 3 :puts "product is:#{$num1.to_i*$num2.to_i}"
when 4 :puts "quotient is:#{$num1.to_i/$num2.to_i}"
end


#multiplication table
puts "multiplication table"
puts"enter the number for multiplication table"
a=gets
a=a.to_i
m=1
for i in(1..10)
 m=a*i
 puts "#{a} x #{i} = #{m}"
end

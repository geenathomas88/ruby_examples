puts "u want to count the stars in the sky,then press y"
button =gets.chomp
if button == 'y'
 count = 0
 while count <= 1
  puts "the stars are #{count+100}"
  puts "u want to continue to count the stars press y"
  button = gets.chomp
  if button == 'y'
   count =1
   while count <= 12345
   puts "the stars are #{count}"
   count += 1
   end
  end
  puts "go to 1 meter distance away"
 puts "you rae so strined take rest"
 puts "again you want to continue to count the stars press y"
 button = gets.chomp
  if button == 'y'
   count =12345
   while count <= 123456
   puts "the stars are #{count}"
   count += 1
   end
  end
 end
 puts "for today its enough go to sleep,tomorrow u continue to count remainig stars."
 else
  puts "go to bed"
end


  

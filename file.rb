a=""
q=""
puts "please type ur filename"
filename=gets.chomp
if File.exist?(filename)
puts "filename already exist"
puts "press y to create alternate filename"
yes=gets.chomp
if yes=="y"
filename=filename+rand(1000).to_s
unless File.exist?(filename)
f=File.new(filename,"w")
puts "enter ur name"
a=gets.chomp
puts "hello #{a} how r u"
f.puts "hello #{a} how r u"
a=gets.chomp
f.puts a
puts "k how was ur training"
f.puts "k how was ur training"
a=gets.chomp
f.puts a
puts "k then write a program to count stars in sky"
f.puts "k then write a program to count stars in sky"
a=gets.chomp
sleep(5)
puts "idiot wat u searching i am not going to give the source code,study well"
f.close
puts "ur filename is #{filename} and contents are"
puts "loading....."
sleep(5)
f=File.open(filename,"r")
f.each{|line| puts line.to_s}
puts "send this file "
end
end
else
f=File.new(filename,"w")
puts "enter ur name"
a=gets.chomp
puts "hello #{a} how r u"
f.puts "hello #{a} how r u"
a=gets.chomp
f.puts a
puts "k how was ur training"
f.puts "k how was ur training"
a=gets.chomp
f.puts a
puts "k then write a program to count stars in sky"
f.puts "k then write a program to count stars in sky"
a=gets.chomp
sleep(5)
puts "idiot wat u searching i am not going to give the source code,study well"
f.close
puts "ur filename is #{filename} and contents are"
puts "loading....."
sleep(5)
f=File.open(filename,"r")
f.each{|line| puts line.to_s}
puts "send this file "
end


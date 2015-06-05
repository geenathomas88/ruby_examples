class Square
  def initialize(side)
    @side = side
  end
  
  def area
    @side*@side
  end
end

a =Square.new(10)
puts a.area

def basic_method
  x = 10
  puts x
end

x = 3
basic_method
puts x

def b_m
  puts $s
end

$s = 3
b_m

def that
  $d = 45
  puts $d
end

that
puts "#{$d}+#{$s}"

class Circle
  def Circle.say
    puts "Hello class"
  end
  def say
    puts "hello instance"
  end
end

Circle.say
Circle.new.say

class Circle
  def initialize
    if defined?(@@no)
      @@no = @@no+1
    else
      @@no = 1
    end
  end
  def Circle.count
    @@no
end 
end

n = Circle.new
m = Circle.new
puts Circle.count

class Living
  def cry
    puts "I m crying"
  end
  def live
    puts "i m living"
  end
end

class Human < Living
  def live
  super
  end
end

geena = Human.new
geena.live
geena.cry
tiger = Living.new
tiger.cry
tiger.live

class Person
  def initialize(f, l)
    @f = f
    @l = l
  end
  def v
    return @v
  end
end

class Doctor < Person
  def v
    "Dr" + super
  end
end

class String
  def length
    45
  end
end

u = "there is a lion"
puts u.class

puts u.length
puts u.methods.join('')

class Man
  attr_accessor :name, :age, :color
end

anu = Man.new
anu.name = "anu"
anu.age = 10
anu.color = "white"

puts anu.instance_variables.inspect

class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @name = @f_n + ' ' + @l_n
  end
  
  def set_name(name)
    f_n, l_n = name.split(/\s+/)
   set_f_n(f_n)
   set_l_n(l_n)
  end
  
  def set_f_n(f_n)
    @f_n = f_n
  end
  
  def set_l_n(l_n)
    @l_n = l_n
  end
end

y = Person.new("Geena Thomas")
puts y.name

class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @name = @f_n + ' ' + @l_n
    puts "#{@name}"
  end
  
  def set_name(name)
    f_n, l_n = name.split(/\s+/)
   @f_n = f_n
   @l_n = l_n
  end
end

y = Person.new("Geena Thomas")


class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @name = @f_n + ' ' + @l_n
  end
  
  def set_name(name)
    f_n, l_n = name.split(/\s+/)
   @f_n = f_n
   @l_n = l_n
  end
  
   def set_f_n(f_n)
    @f_n = f_n
  end
  
  def set_l_n(l_n)
    @l_n = l_n
  end
 
end

y = Person.new("Geena Thomas")
y.set_l_n("freddy")
puts y.name


class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @name = @f_n + ' ' + @l_n
  end
   
  def set_name(name)
    f_n, l_n = name.split(/\s+/)
   @f_n = f_n
   @l_n = l_n
  end
  
   def set_f_n(f_n)
    @f_n = f_n
  end
  
  def set_l_n(l_n)
    @l_n = l_n
  end 
end

#private :set_f_n, :set_name

y = Person.new("Geena Thomas")
#y.set_l_n("freddy")
puts y.name
  
class Person
  def initialize(age)
    @age = age
  end
  def age
    @age
  end
  
  def age_difference(other_person)
    (self.age-other_person.age).abs
  end
  #protected:age
end

sini = Person.new(26)
sumi = Person.new(21)
puts sini.age_difference(sumi)
puts sumi.age

class Animal
  attr_accessor :name
def initialize(name)
  @name = name
end
end
class Tiger<Animal
  def cry
    puts "girrr"
  end
end
class Cat<Animal
  def cry
    puts "meow"
  end
end

animal = [Tiger.new("liu"), Cat.new("giu"), Cat.new("miu")]
animal.each do|animal|
  puts animal.cry
end

class Draw
  def draw
    "this is a drawing"
  end
  class Line
    def line
      "this is a line"
  end
  end

class Circle
  def circle
    "this is a line"
end
end
end

a = Draw.new
puts a.draw
a = Draw::Circle.new
puts a.circle
a = Draw::Line.new
puts a.line

pi = 3.14
class Circle
  pi = 4.5
  def Circle.area(r)
    pi*r*r
  end
  class Square< Circle
    def Circle.area(r)
      pi*4*r
    end
  end
end
  def random
    puts rand(43).chr
  end
  random
  def random
    rand(1000)
  end
  puts random
  
  #module Pers
    #class Boy
   # attr_accessor :length
    #puts length
  #end
  #end
  #module Ma
   # class Boy
   # attr_accessor :name
    #puts name
  #end
 # end
  
 # a = Pers::Boy.new
  #a.length = 10
  #b = Ma::Boy.new
  #b.name = "m"
  
  module Radius
    def red
      puts "red"
    end
  end
  class Color
    include Radius
  end
  
  v = Color.new
  v.red
  
  #array = %w{my name is Geena thomas}
  #array.each do |w|
   # longest_word
  #longest_word = w if longest_word.length<w.length
  #end
  #puts longest_word
  
  [1,2,3,4].collect { |i| i.to_s + "v"}
    
  
module Toolbox

   def print
puts "toolbox"
     #puts"This is a line of length:#{@length}}"
   end
 end


module Country
 #class Ruler
   attr_accessor:name
  def initialize(name)
    @name=name
  end
  def pass
    puts"its a name:#{@name}"
  end
 #end
end

class Pen
attr_accessor:name
  def initialize(name)
   @name=name    
  end
  def use
   puts"using in drawing"
puts Toolbox.print
  end
end

class Scale<Pen
include Toolbox
 def initialize(name)
    @name=name
 end
 def printing
    puts"its a :#{@name}pencil"
 end

end

#a=Country.new(5)
#a.pass
#b=Country::Ruler.new('tree')
#b.pass
c=Scale.new('tree')

#c.printing
#c.use
#puts c.methods-Object.methods
c.print



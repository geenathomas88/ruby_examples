module Toolbox

def pass
  puts "from toolbox"

end
end

module Other
def pass
  puts "from other"
end
end

class Scale
include Toolbox
include Other
def del  
  puts "del from scale"
end
end
 
c=Scale.new
c.del
#c.print
c.pass


 #write a function that shuffles the letters in a given string.
 def string_shuffle(s)
   s.split('').shuffle.join
 end
 puts string_shuffle("foobar")
 #add a shuffle method to the String class.
 class String
 	def shuffle
 		self.split('').shuffle.join
 	end
 end
 s = String.new("geena")
 puts s.shuffle
class Person
	attr_accessor  :first, :last

	def 
end
#Learn observer design pattern
#
require 'observer'
class Car

	include Observable
	attr_reader :mileage, :service

	def initialize(miles=0,service=3000)
		@mileage, @service = miles, service
		add_observer(Notifier.new)#add a dependent or the observer who is interested in change of miles.
	end

	def log(miles)
		@mileage += miles
		changed#set flag changed to true
		notify_observers(self,miles)#call method to inform observers.
	end
end


class Notifier
	def update(car,miles)
		puts "The car has logged #{miles}, totaling to #{car.mileage}"
		puts "The car needs tobe taken to service" if car.service <= car.mileage
	end
end



car = Car.new(1000,3000)
car.log(100)
car.log(2500)
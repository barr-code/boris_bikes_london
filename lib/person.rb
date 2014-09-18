class Person

	def initialize(bike=nil)
		@bike = bike
	end
	
	def has_bike?
		!@bike.nil?
	end

	def rent_bike_from(station)
		station.release_bike
	end

	def crash(bike)
		bike.break!
	end
end
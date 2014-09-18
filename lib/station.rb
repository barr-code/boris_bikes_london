class Station
	
	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike
	end

	def release_bike
		raise 'There are no bikes to release.' if empty?
		@bikes.pop
	end

	def empty?
		@bikes.count == 0
	end

end
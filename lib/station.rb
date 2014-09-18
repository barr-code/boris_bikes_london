class Station
	
	def initialize(capacity=10)
		@bikes = []
		@capacity = capacity
	end

	def dock(bike)
		raise 'This station is full. No room for bikes.' if full?
		@bikes << bike
	end

	def release_bike
		raise 'There are no bikes to release.' if empty?
		@bikes.pop
	end

	def empty?
		@bikes.count == 0
	end

	def full?
		@bikes.count == @capacity
	end

end
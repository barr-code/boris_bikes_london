class Bike

	def initialize
		@broken = false
	end

	def broken?
		@broken == true
	end

	def break!
		@broken = true
	end
end
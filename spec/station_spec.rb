require 'station'

describe Station do 	

	it "should accept a bike" do
		bike = double :bike
		station = Station.new
		station.dock(bike)
	end

	it "should release a bike" do
		station = Station.new
		station.release_bike
	end

end
require 'station'

describe Station do 	

	it "should accept a bike" do
		bike = double :bike
		station = Station.new
		station.dock(bike)
	end

	it "should release a bike" do
		bike = double :bike
		station = Station.new
		station.dock(bike)
		station.release_bike
	end

	it "should not release a bike if empty" do
		station = Station.new
		expect(lambda {station.release_bike}).to raise_error(RuntimeError)
	end

end 
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

	it "should not accept a bike when it's full" do
		bike = double :bike
		station = Station.new(5)
		5.times {station.dock(bike)}
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end
end 
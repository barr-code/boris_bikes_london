require 'station'

describe Station do 	

it "should accept a bike" do
	bike = double :bike
	station = Station.new
	station.dock(bike)
end

end
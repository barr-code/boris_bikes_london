require 'bike'

describe Bike do

	it "should not be broken" do
		expect(Bike.new).not_to be_broken
	end

	it "should be able to break" do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end
	
end
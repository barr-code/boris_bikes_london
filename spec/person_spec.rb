require 'person'

describe Person do

	it "should not have a bike" do
		expect(Person.new).not_to have_bike
	end

	it "should be able to have a bike" do
		person = Person.new(:bike)
		expect(person).to have_bike
	end

	it "should be able to rent a bike from a station" do
		station = double :station
		person = Person.new
		expect(station).to receive(:release_bike)
		person.rent_bike_from(station)
	end 

	it "should break a bike when it crashes" do
		bike = double :bike
		person = Person.new
		expect(bike).to receive(:break!)
		person.crash(bike)
	end

end
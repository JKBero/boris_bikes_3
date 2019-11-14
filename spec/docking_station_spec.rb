require "docking_station"
require "bike"

describe DockingStation do

  describe "#release_bike" do
    it "responds to the method release_bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "returns true if working? method is called" do
      bike = Bike.new
      subject.dock(bike)
      expect((subject.release_bike).working?).to be true
    end

    it "raises an error if there is no bike" do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end

  end

  describe "#dock()" do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it "docks the bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it "raises an error if the docking station is full" do
      20.times { subject.dock(Bike.new) }
      another_bike = Bike.new
      expect{ subject.dock(another_bike) }.to raise_error("There is no space in the docking station.")
    end

  end

  describe "#bike" do
    it { is_expected.to respond_to(:bikes) }

    it "returns the bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

end

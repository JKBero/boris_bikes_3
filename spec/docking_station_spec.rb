require "docking_station"
require "bike"

describe DockingStation do

  describe "#release_bike" do
    it "responds to the method release_bike" do
      expect(subject).to respond_to(:release_bike)
    end

    it "returns true if working? method is called" do
      expect((subject.release_bike).working?).to be true
    end

  end

  describe "#dock()" do
    it { is_expected.to respond_to(:dock).with(1).argument }
  end

  describe "#view_bikes" do
  it { is_expected.to respond_to(:view_bikes) }
  end

end

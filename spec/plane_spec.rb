require 'plane'

describe Plane do

  describe " #land" do

    it "should be able to land" do
      expect(subject).to respond_to :land
    end

    it "should accept aiport" do
      expect(subject).to respond_to(:land).with(1).arguments
    end

  end

  describe " #take_off" do

    it "should be able to depart" do
      expect(subject).to respond_to :take_off
    end

    it "should confirm that plane has departed" do
      plane = Plane.new
      plane.land(Airport.new)
      expect(plane.take_off).to eq "plane is no longer in the airport"
    end

    it "shouldn't let planes take_off when weather is stormy" do
      plane = Plane.new.land(Airport.new)
      allow(plane).to receive(:weather?).and_return("stormy")
      expect(plane.take_off).to raise_error("plane can't depart due to stormy weather")
    end

  end

end

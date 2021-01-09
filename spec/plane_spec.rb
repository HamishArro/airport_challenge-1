require 'plane'

describe Plane do

  describe " #land" do

    it "should be able to land" do
      expect(subject).to respond_to :land
    end

    it "should accept aiport" do
      expect(subject).to respond_to(:land).with(1).arguments
    end

    it "should raise an error if airport is full" do
      airport = Airport.new
      20.times { Plane.new.land(airport) }
      expect(Plane.new.land(airport)).to raise_error("airport is at full capacity")
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

  end

end

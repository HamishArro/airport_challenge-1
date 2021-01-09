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
      expect(suject.take_off).to eq "plane is no longer in the airport"
    end

  end

end

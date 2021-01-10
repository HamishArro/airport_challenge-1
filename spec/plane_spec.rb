require 'plane'

describe Plane do

  describe " #land" do

    it "should be able to land" do
      expect(subject).to respond_to :land
    end

    it "should accept aiport" do
      expect(subject).to respond_to(:land).with(1).arguments
    end

    it "shouldn't let planes land when weather is stormy" do
      subject.land(airport = Airport.new)
      allow(airport).to receive(:rand).and_return(90)
      expect { subject.land }.to raise_error("plane can't land due to stormy weather")
    end

  end

  describe " #take_off" do

    it "should be able to depart" do
      expect(subject).to respond_to :take_off
    end

    it "should confirm that plane has departed" do
      subject.land(airport = Airport.new)
      allow(airport).to receive(:rand).and_return(10)
      expect(subject.take_off).to eq "plane is no longer in the airport"
    end

    it "shouldn't let planes take_off when weather is stormy" do
      subject.land(airport = Airport.new)
      allow(airport).to receive(:rand).and_return(90)
      expect { subject.take_off }.to raise_error("plane can't depart due to stormy weather")
    end

  end

end

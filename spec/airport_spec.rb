require 'airport'

describe Airport do

  it "should raise an error if st full capacity" do
    60.times { subject.add_plane("plane") }
    expect { subject.add_plane("plane") }.to raise_error("airport is at full capacity")
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
  end

  it "capacity should be changeable" do
    airport = Airport.new(25)
    expect(airport.capacity).to eq 25
  end

  it "should raise an error if the plane isn't in the airport" do
    airport = Airport.new
    expect { airport.remove_plane(1) }.to raise_error("plane cannot be removed as it isn't in the airport")
  end

end

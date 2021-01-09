require 'airport'

describe Airport do

  it "should raise an error if st full capacity" do
    60.times { subject.add_plane("plane") }
    expect { subject.add_plane("plane") }.to raise_error("airport is at full capacity")
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
  end

end

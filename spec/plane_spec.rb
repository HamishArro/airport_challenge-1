require 'plane'

describe Plane do

  it "should be able to land" do
    expect(subject).to respond_to :land
  end

  it "should accept aiport" do
    expect(subject).to respond_to(:land).with(1).arguments
  end

end

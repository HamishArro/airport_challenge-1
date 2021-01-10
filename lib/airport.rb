class Airport
DEFAULT_CAPACITY = 60
attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = Array.new
  end

  def add_plane(plane)
    raise "airport is at full capacity" if @planes.count >= @capacity
    @planes << [plane]
  end

  def remove_plane(plane)
    @planes.delete(plane)
  end

  def weather?
    types = ["sunny", "stormy"]
    rand(1..100) <= 75 ? types[0] : types[1]
  end

end

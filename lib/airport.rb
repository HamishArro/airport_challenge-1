class Airport
DEFAULT_CAPACITY = 60
attr_reader :capacity, :planes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = Array.new
  end

  def add_plane(plane)
    raise "airport is at full capacity" if @planes.count >= @capacity
    @planes << [plane]
    @planes.count - 1
  end

  def remove_plane(plane)
    @planes.delete_at(plane)
  end

  def weather?
    rand(1..100) <= 75 ? "sunny" : "stormy"
  end

  def in_airport?(plane)
    @planes[plane] != nil ? "plane is in airport" : "plane is no longer in the airport"
  end

end

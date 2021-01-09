class Airport

  def initialize
    @capacity = 60
    @planes = Array.new
  end

  def add_plane(plane)
    raise "airport is at full capacity" if @planes.count >= @capacity
    @planes << [plane]
  end

  def remove_plane(plane)
    @planes.delete(plane)
    "plane is no longer in the airport"
  end

end

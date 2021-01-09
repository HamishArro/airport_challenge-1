class Airport

  def initialize
    @planes = Array.new
  end

  def add_plane(plane)
    @planes << [plane]
  end

  def remove_plane(plane)
    @planes.delete(plane)
    "plane is no longer in the airport"
  end

end

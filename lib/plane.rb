require_relative './airport.rb'

class Plane

  def land(airport)
    @airport = airport
    @airport.add_plane(self)
  end

  def take_off
    @airport.remove_plane(self)
    @airport = nil
    "plane is no longer in the airport"
  end

end

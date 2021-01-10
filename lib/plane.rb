require_relative './airport.rb'

class Plane

  def land(airport)
    @airport = airport
    @airport.add_plane(self)
  end

  def take_off
    raise "plane can't depart due to stormy weather" if @airport.weather? == "stormy"
    @airport.remove_plane(self)
    "plane is no longer in the airport"
  end

end

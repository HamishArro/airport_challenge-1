require_relative './airport.rb'

class Plane

  def land(airport)
    @airport = airport
    raise "plane can't land due to stormy weather" if @airport.weather? == "stormy"
    @airport.add_plane(self)
    @airport.in_airport?(self)
  end

  def take_off
    raise "plane can't depart due to stormy weather" if @airport.weather? == "stormy"
    @airport.remove_plane(self)
    @airport.in_airport?(self)
  end

end

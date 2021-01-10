require_relative './airport.rb'

class Plane

  def land(airport)
    @airport = airport
    raise "plane can't land due to stormy weather" if @airport.weather? == "stormy"
    @plane_number = @airport.add_plane(self)
    @airport.in_airport?(@plane_number)
  end

  def take_off
    raise "plane can't depart due to stormy weather" if @airport.weather? == "stormy"
    @airport.remove_plane(@plane_number)
    @airport.in_airport?(@plane_number)
  end

end

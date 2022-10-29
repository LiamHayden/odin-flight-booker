class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |u| [ u.airport_code, u.id ] }
    @passengers = ((1 .. 4).map { |p| [p,p] } )
    @dates = Flight.all.map{ |u| [ u.start_datetime, u.id ] }
  end
end

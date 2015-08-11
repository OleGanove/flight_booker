class FlightsController < ApplicationController
  require 'active_support/core_ext'

  def index
  	@airports = Airport.all.map {|u| [u.name, u.id] }
  	@dates = Flight.all.map {|u| [u.start_datetime.strftime("%d.%m.%Y"), u.start_datetime] }.uniq
  	@passengers = (1..4).map {|p| [p.to_s + " passenger".pluralize(p), p] }
  	@flights = Flight.search(params)


  	@prev_from_airport = params[:from_airport_id]
  	@prev_to_airport = params[:to_airport_id]
  	@prev_date = params[:start_datetime]
  end
end

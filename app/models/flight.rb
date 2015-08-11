class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport,	:class_name => "Airport"

  has_many :bookings
  has_many :passengers, through: :bookings

  def self.search(params)
  	if params[:from_airport_id] && params[:to_airport_id] && params[:start_datetime]
  	  where(from_airport_id: params[:from_airport_id], 
  		    to_airport_id: params[:to_airport_id],
  		    start_datetime: (params[:start_datetime].to_date.beginning_of_day..params[:start_datetime].to_date.end_of_day))
  	else
  	  none
  	end
  end

  def date_formatted
    start_datetime.strftime("%A, %d.%m.%Y at %H:%M")
  end
end

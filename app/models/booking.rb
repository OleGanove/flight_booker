class Booking < ActiveRecord::Base
  has_many :tickets
  has_many :passengers, through: :tickets
  belongs_to :flight

  accepts_nested_attributes_for :passengers
end

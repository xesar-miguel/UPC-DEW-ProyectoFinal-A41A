class Booking < ActiveRecord::Base
  belongs_to :lounge
  attr_accessible :day, :dayofweek, :description, :end, :month, :start, :year
end

class Lounge < ActiveRecord::Base
  belongs_to :distrito
  attr_accessible :direction, :geolocation, :name, :phone
end

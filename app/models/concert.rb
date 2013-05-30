class Concert < ActiveRecord::Base
  belongs_to :score
  belongs_to :owner
  belongs_to :band
  belongs_to :lounge
  belongs_to :booking
  belongs_to :status
  attr_accessible :name
end

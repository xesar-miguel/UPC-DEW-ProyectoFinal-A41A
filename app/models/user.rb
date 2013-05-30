class User < ActiveRecord::Base
  belongs_to :usertype
  attr_accessible :dni, :email, :gender, :givenname, :lastname1, :lastname2, :password, :tui, :username
end

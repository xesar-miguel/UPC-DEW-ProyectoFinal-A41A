class User < ActiveRecord::Base
  belongs_to :type_person
  attr_accessible :semail, :sfirstname, :slastname1, :slastname2, :snumdocum, :spassword, :ssex, :stypedocum
end

class Comment < ActiveRecord::Base
  belongs_to :author
  attr_accessible :content, :ordinal
end

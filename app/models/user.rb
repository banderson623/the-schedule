class User < ActiveRecord::Base
  has_many :attendees
  has_many :meetings, through: :attendees
  
  has_many :comments
end

class User < ActiveRecord::Base
  has_many :atendees
  has_many :meetings, through: :atendees
  
  has_many :comments
end

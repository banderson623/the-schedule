class User < ActiveRecord::Base
  has_many :agendas
  has_many :meetings, through: agendas
  
  has_many :comments
end

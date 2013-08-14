class Item < ActiveRecord::Base
  has_many :agendas
  has_many :meetings, through: :agendas
  
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
end

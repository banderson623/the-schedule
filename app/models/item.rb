class Item < ActiveRecord::Base
  has_many :agendas
  has_many :meetings, through: :agendas
  
  belongs_to :creator, class_name: :user, foreign_key: :users_id
end

class Item < ActiveRecord::Base
  has_many :agendas
  has_many :meetings, through: :agendas

  has_many :attachments

  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  
  validates :body, :user_id, :duration, presence: true
end

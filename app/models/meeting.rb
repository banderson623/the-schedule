class Meeting < ActiveRecord::Base
  has_many :agendas
  has_many :items, through: :agendas

  has_many :attendees
  has_many :users, through: :attendees
  
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  
  validates :title, :duration, presence: true
  
end

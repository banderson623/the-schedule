class Meeting < ActiveRecord::Base
  has_many :agendas
  has_many :items, through: :agendas

  has_many :attendees
  has_many :users, through: attendees
end

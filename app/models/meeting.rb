class Meeting < ActiveRecord::Base
  has_many :agendas
  has_many :items, through: :agendas
end

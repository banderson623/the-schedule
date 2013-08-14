class Agenda < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :item
end

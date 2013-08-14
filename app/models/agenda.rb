class Agenda < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :item

  validates :item_id, :meeting_id, presence: true
end

class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :meeting
  
  STATUS = {:invited => 1,
            :uncertain => 3,
            :attending => 5}
  
  validates :user_id, :meeting_id, :status, presence: true
end

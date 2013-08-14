class Comment < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  
  validates :item_id, :user_id, presence: true
end

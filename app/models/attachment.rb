# Wraps the file uploaded to S3.
# Many of these can be connected to an item
class Attachment < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  mount_uploader :file, AttachmentUploader

  # This must be connected to an item and a user
  validates :item_id, :user_id, presence: true

  # def file_name
  #   
  # end
end

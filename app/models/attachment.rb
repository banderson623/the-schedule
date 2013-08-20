# Wraps the file uploaded to S3.
# Many of these can be connected to an item
class Attachment < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  mount_uploader :attachment_name, AttachmentUploader

end

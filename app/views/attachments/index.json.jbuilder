json.array!(@attachments) do |attachment|
  json.extract! attachment, :item, :user, :attachment_name
  json.url attachment_url(attachment, format: :json)
end

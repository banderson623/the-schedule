json.array!(@comments) do |comment|
  json.extract! comment, :body, :item_id, :users_id
  json.url comment_url(comment, format: :json)
end

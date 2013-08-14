json.array!(@comments) do |comment|
  json.extract! comment, :body, :items_id, :users_id
  json.url comment_url(comment, format: :json)
end

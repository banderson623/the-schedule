json.array!(@items) do |item|
  json.extract! item, :body, :duration, :hidden, :teaser
  json.url item_url(item, format: :json)
end

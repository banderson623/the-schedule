json.array!(@meetings) do |meeting|
  json.extract! meeting, :title, :meets_at, :duration
  json.url meeting_url(meeting, format: :json)
end

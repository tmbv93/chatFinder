json.array!(@interests) do |interest|
  json.extract! interest, :id, :user, :topic
  json.url interest_url(interest, format: :json)
end

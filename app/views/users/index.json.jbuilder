json.array!(@users) do |user|
  json.extract! user, :id, :username, :firstName
  json.url user_url(user, format: :json)
end

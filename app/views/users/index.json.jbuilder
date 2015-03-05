json.array!(@users) do |user|
  json.extract! user, :id, :id, :pseudo, :password, :email, :solde, :note
  json.url user_url(user, format: :json)
end

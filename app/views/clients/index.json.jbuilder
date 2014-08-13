json.array!(@clients) do |client|
  json.extract! client, :id, :name, :country, :address, :mobilenumber, :email
  json.url client_url(client, format: :json)
end

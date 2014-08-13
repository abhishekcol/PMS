json.array!(@resources) do |resource|
  json.extract! resource, :id, :fname, :lname, :dob, :phnumber, :email, :expr, :spclizn
  json.url resource_url(resource, format: :json)
end

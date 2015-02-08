json.array!(@members) do |member|
  json.extract! member, :id, :name, :phone, :birthday
  json.url member_url(member, format: :json)
end

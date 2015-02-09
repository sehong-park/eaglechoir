json.array!(@hymns) do |hymn|
  json.extract! hymn, :id, :title, :index
  json.url hymn_url(hymn, format: :json)
end

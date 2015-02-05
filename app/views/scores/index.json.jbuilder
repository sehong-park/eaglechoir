json.array!(@scores) do |score|
  json.extract! score, :id, :title, :composer, :index
  json.url score_url(score, format: :json)
end

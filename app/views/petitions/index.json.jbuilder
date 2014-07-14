json.array!(@petitions) do |petition|
  json.extract! petition, :id, :cover, :title, :description, :signum, :target
  json.url petition_url(petition, format: :json)
end

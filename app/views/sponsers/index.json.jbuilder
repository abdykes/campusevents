json.array!(@sponsers) do |sponser|
  json.extract! sponser, :id, :name, :url, :logo
  json.url sponser_url(sponser, format: :json)
end

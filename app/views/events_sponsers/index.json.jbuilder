json.array!(@events_sponsers) do |events_sponser|
  json.extract! events_sponser, :id, :event_id, :sponser_id
  json.url events_sponser_url(events_sponser, format: :json)
end

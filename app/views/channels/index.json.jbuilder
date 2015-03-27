json.array!(@channels) do |channel|
  json.extract! channel, :id, :name, :topic
  json.url channel_url(channel, format: :json)
end

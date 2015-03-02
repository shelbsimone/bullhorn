json.array!(@dynamites) do |dynamite|
  json.extract! dynamite, :id, :content
  json.url dynamite_url(dynamite, format: :json)
end

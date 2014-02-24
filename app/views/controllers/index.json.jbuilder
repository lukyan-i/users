json.array!(@controllers) do |controller|
  json.extract! controller, :id, :categories
  json.url controller_url(controller, format: :json)
end

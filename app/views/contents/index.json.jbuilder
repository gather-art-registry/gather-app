json.array!(@contents) do |content|
  json.extract! content, :id, :title, :body, :order, :page
  json.url content_url(content, format: :json)
end

json.array!(@hefans) do |hefan|
  json.extract! hefan, :name, :description, :price, :photo
  json.url hefan_url(hefan, format: :json)
end

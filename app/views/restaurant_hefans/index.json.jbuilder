json.array!(@restaurant_hefans) do |restaurant_hefan|
  json.extract! restaurant_hefan, 
  json.url restaurant_hefan_url(restaurant_hefan, format: :json)
end

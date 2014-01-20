json.array!(@district_hefans) do |district_hefan|
  json.extract! district_hefan, 
  json.url district_hefan_url(district_hefan, format: :json)
end

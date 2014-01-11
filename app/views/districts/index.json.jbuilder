json.array!(@districts) do |district|
  json.extract! district, :name
  json.url district_url(district, format: :json)
end

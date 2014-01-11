json.array!(@places) do |place|
  json.extract! place, :name, :district_id
  json.url place_url(place, format: :json)
end

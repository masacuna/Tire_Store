json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :gst, :hst, :pst
  json.url province_url(province, format: :json)
end

json.array!(@stocktypes) do |stocktype|
  json.extract! stocktype, :id, :name
  json.url stocktype_url(stocktype, format: :json)
end

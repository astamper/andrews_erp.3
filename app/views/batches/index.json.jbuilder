json.array!(@batches) do |batch|
  json.extract! batch, :id, :manufacture_date, :quantity, :status, :stocktype_id
  json.url batch_url(batch, format: :json)
end

json.array!(@stocks) do |stock|
  json.extract! stock, :id, :intitial_quantity, :current_quantity, :status, :purchase_manufacture_date, :expiration_date, :price_per_unit, :supplier, :identifier, :stocktype_id
  json.url stock_url(stock, format: :json)
end

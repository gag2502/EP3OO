json.array!(@items) do |item|
  json.extract! item, :id, :nome, :description, :release_date, :price, :img_url
  json.url item_url(item, format: :json)
end

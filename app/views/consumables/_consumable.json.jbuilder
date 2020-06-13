json.extract! consumable, :id, :name, :price, :created_at, :updated_at
json.url consumable_url(consumable, format: :json)

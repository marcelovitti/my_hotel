json.extract! reservation, :id, :Room_id, :Client_id, :status, :reservation_date, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

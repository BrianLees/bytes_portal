json.extract! location, :id, :address_line_1, :address_line_2, :city, :state_code, :zip, :created_at, :updated_at
json.url location_url(location, format: :json)

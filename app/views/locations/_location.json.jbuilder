json.extract! location, :id, :name, :available_vaccines, :phone, :city, :state, :street, :zip, :location_type, :appointment, :created_at, :updated_at
json.url location_url(location, format: :json)

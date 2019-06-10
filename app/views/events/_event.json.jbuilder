json.extract! event, :id, :description, :location_id, :event_time, :is_approved, :created_at, :updated_at
json.url event_url(event, format: :json)

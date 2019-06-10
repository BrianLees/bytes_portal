json.extract! user_event, :id, :user_id, :event_id, :participant_type, :created_at, :updated_at
json.url user_event_url(user_event, format: :json)

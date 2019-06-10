json.extract! message, :id, :rsvp, :user_event_id, :is_paid, :created_at, :updated_at
json.url message_url(message, format: :json)

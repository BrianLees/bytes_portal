FactoryBot.define do
  factory :message do
    rsvp { false }
    user_event { nil }
    is_paid { false }
  end
end

FactoryBot.define do
  factory :user_event do
    user
    event
    participant_type { "Host" }
  end
end

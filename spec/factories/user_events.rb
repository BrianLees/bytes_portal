FactoryBot.define do
  factory :user_event do
    user { nil }
    event { nil }
    participant_type { "MyString" }
  end
end

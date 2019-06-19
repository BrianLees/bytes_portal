FactoryBot.define do
  factory :participant do
    user
    event
    participant_type { 'host' }
  end
end

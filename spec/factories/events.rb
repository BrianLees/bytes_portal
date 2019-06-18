FactoryBot.define do
  factory :event do
    description { "MyString" }
    location
    menu
    event_time { "2019-06-09 22:21:48" }
    is_approved { false }
  end
end

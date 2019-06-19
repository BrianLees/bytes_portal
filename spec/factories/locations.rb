FactoryBot.define do
  factory :location do
    name { Faker::Restaurant.name }
    address_line_1 { Faker::Address.street_address }
    address_line_2 { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state_code { Faker::Address.state_abbr }
    zip { Faker::Address.zip_code }
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

non_admin = User.limit(1).find_by(role: "user")


location = Location.find_or_create_by(
  name: Faker::Restaurant.name,
  address_line_1: Faker::Address.street_address,
  address_line_2: Faker::Address.secondary_address,
  city: Faker::Address.city,
  state_code: Faker::Address.state_abbr,
  zip: Faker::Address.zip_code
)

menu = Menu.find_or_create_by(
  description: "Description of menu",
  title: "Sushi",
  years_involved: "2019"
)

event = Event.find_or_create_by(
  description: "My Dinner",
  location_id: location.id,
  menu_id: menu.id,
  event_time: "2019-06-09 22:21:48",
  is_approved: false
)

participant = Participant.find_or_create_by(
  user_id: non_admin.id,
  event_id: event.id,
  participant_type: "host"
)


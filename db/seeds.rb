# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do
  Location.create(
    name: Faker::TvShows::Simpsons.location,
    phone: Faker::PhoneNumber.phone_number,
    city: Faker::Address.city,
    state: Faker::Address.state,
    street: Faker::Address.street_address,
    zip: Faker::Address.zip,
    location_type: Location::LOCATION_TYPES.sample,
    appointment: [Location::APPOINTMENT_TYPES.sample],
    url: Faker::Internet.url(host: 'example.com'),
    notes: Faker::Lorem.paragraphs(number: 1),
    vaccines: [true, false].sample,
    testing: [true, false].sample
  )
end
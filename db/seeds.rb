# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Attendance.destroy_all
Event.destroy_all
User.destroy_all


require 'faker'

10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, password: "azerty")
end
puts "user créer"
5.times do
  Event.create!(start_date: Faker::Date.forward(30), duration: 60, title: Faker::HarryPotter.location, description: Faker::Lorem.paragraph_by_chars(256, false), price: rand(1..90), location: Faker::Address.city, admin_id: User.all.sample.id)
end
puts "event créer"
10.times do
  Attendance.create!( event_id: Event.all.sample.id, user_id: User.all.sample.id, stripe_customer_id: rand(1..100))
end
puts "attendance créer"

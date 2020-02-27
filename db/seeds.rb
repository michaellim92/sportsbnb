# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = %w[Rock\ Climbing Snowboarding Skiiing Basketball Soccer Tennis Swimming Flag\ Football Golf Hiking]
User.destroy_all
Rental.destroy_all
Gear.destroy_all
20.times do |n|
  user = User.create!(email: "jennifer" + "#{n}@yahoo.com", password: "something")
  gear = Gear.create!(brand: "Burton", model: "4D2", description: "This is a snowboard description.", user: user, category: category.sample, price_per_day: 45)
  puts user
  puts gear.category
end

user = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")
user = User.create!(email: "Kye.Huang93@gmail.co.uk", password: "sporting", first_name: "Kye", last_name: "Huang")
user = User.create!(email: "lee-lishien@hotmail.com", password: "sporting", first_name: "Leslie ", last_name: "Lee")
user = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")
user = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")
user = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")
user = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")
user = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")


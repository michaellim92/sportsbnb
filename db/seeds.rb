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
  gear = Gear.create!(brand: "Burton", model: "4D2", description: "This is a snowboard description.", user: user, category: category.sample)
  puts user
  puts gear.category
end
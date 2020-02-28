# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = %w[Rock\ Climbing Snowboarding Skiiing Basketball Soccer Tennis Swimming Flag\ Football Golf Hiking]
if Rails.env.development?
  p "Destroying Gears"
  p "Destroying Users"
  User.destroy_all 
  Rental.destroy_all
  Gear.destroy_all
end
# 20.times do |n|
#   user = User.create!(email: "jennifer" + "#{n}@yahoo.com", password: "something")
#   gear = Gear.create!(brand: "Burton", model: "4D2", description: "This is a snowboard description.", user: user, category: category.sample, price_per_day: 45)
#   puts user
#   puts gear.category
# end

spierce = User.create!(email: "Suzanne.pierce@gmail.co.uk", password: "sporting", first_name: "Suzanne", last_name: "Pierce")
khuang = User.create!(email: "Kye.Huang93@gmail.co.uk", password: "sporting", first_name: "Kye", last_name: "Huang")
llishi = User.create!(email: "lee-lishien@hotmail.com", password: "sporting", first_name: "Leslie ", last_name: "Lee")
arowle = User.create!(email: "A.J.Rowley@gmail.com", password: "sporting", first_name: "Alissa", last_name: "Rowley")
jspence = User.create!(email: "Jeannie.Spen@culinary.co.edu", password: "sporting", first_name: "Jean", last_name: "Spencer")
pholme = User.create!(email: "Patty.Holmes@gmail.com", password: "sporting", first_name: "Patrick", last_name: "Holmes")
regli = User.create!(email: "Reggieli@dexters.co.uk", password: "sporting", first_name: "Reggie", last_name: "Li")
zfoo = User.create!(email: "zack.foon@spqrsf.com", password: "sporting", first_name: "Zack", last_name: "Foon")
ataylo = User.create!(email: "Alexis.taylor@clovelcub.co.uk", password: "sporting", first_name: "Alexis", last_name: "Taylor")

# suzanne
# File.exist? __dir__ + "app/assets/images/user_seed_images/at/at1.1.jpg"
# sz_file = Dir.glob("#{Rails.root}/app/assets/images/user_seed_images/ar/ar1*.jpg")
suzanne1 = Gear.create!(user_id: spierce.id, brand: "Santa Cruz", model: "Backside", category: "Snowboarding", location: "Highbury Islington, London", description: "spierce.id5cm, I'm 5'4\", and it fits perfectly.  Used 4 times at the beginning of the season but in great condition", price_per_day: 12)
suzanne2 = Gear.create!(user_id: spierce.id, brand: "Burton", model: "Aera", category: "Snowboarding", location: "Highbury Islington, London", description: "size M", price_per_day: 10)
suzanne3 = Gear.create!(user_id: spierce.id, brand: "Vans", model: "Saviour", category: "Snowboarding", location: "Highbury Islington, London", description: "UK 5.5, EU 38, ", price_per_day: 15)
suzanne4 = Gear.create!(user_id: spierce.id, brand: "Berghaus", model: "Boots", category: "Hiking", location: "Highbury Islington, London", description: "Brown Hiking Boots, UK 5.5, EU 38", price_per_day: 5)

# kye
kye1 = Gear.create!(user_id: khuang.id, brand: "Atomic", model: "Rester", category: "Skiing", location: "Whitechapel, London", description: "165CM Deck, may need to be waxed", price_per_day: 12)
kye2 = Gear.create!(user_id: khuang.id, brand: "Salomon", model: "Ski Boots", category: "Skiing", location: "Whitechapel, London", description: "size 11", price_per_day: 10)
kye3 = Gear.create!(user_id: khuang.id, brand: "Uvex", model: "Goggles", category: "Skiing", location: "Whitechapel, London", description: "size M", price_per_day: 6)
kye4 = Gear.create!(user_id: khuang.id, brand: "Decathlon", model: "Ski Poles", category: "Skiing", location: "Whitechapel, London", description: "49cm", price_per_day: 8)
kye5 = Gear.create!(user_id: khuang.id, brand: "Molten", model: "GF6X", category: "Basketball", location: "Whitechapel, London", description: "size 6", price_per_day: 3)

# leslie
les1 = Gear.create!(user_id: llishi.id, brand: "Black Diamond", model: "Bod Sit", category: "Rock Climbing", location: "Earl\'s Court, London", description: "Rock Climbing Harness", price_per_day: 5)
les2 = Gear.create!(user_id: llishi.id, brand: "Adidas 5.10", model: "Anasazi", category: "Rock Climbing", location: "Earl\'s Court, London", description: "EU43", price_per_day: 3)
les3 = Gear.create!(user_id: llishi.id, brand: "Boreal", model: "Joker Velcro", category: "Rock Climbing", location: "Earl\'s Court, London", description: "EU43", price_per_day: 5)
les4 = Gear.create!(user_id: llishi.id, brand: "La Sportiva", model: "Genius", category: "Rock Climbing", location: "South Kensington, London", description: "EU43", price_per_day: 5)

# alissa
alis1 = Gear.create!(user_id: arowle.id, brand: "Taylor Made", model: "MC", category: "Golf", location: "Hammersmith,", description: "Golf Clubs full set and bag ( Men's Right-Handed,) Taylor made MC irons. Titleist driver, ping g10 3 wood, Taylor made burner rescue wood and srixon wedges..no putter included. All stiff shafts. Condition is well used as you can see from.photis but they're a good set of clubs and a lot better than some full sets you see for sale on here. The bag is broken on the strap and has some broken zips but works fine! Any questions let me know!", price_per_day: 25)
at_path = "app/assets/images/user_seed_images/at/"
at1 = File.open(at_path)

# jean
jean1 = Gear.create!(user_id: jspence.id, brand: "Nike", model: "Huarache Elite", category: "Flag Football", location: "New Town, Edinburgh", description: "size: EU 40", price_per_day: 10)
jean2 = Gear.create!(user_id: jspence.id, brand: "Gilbert", model: "Official England Replica", category: "Flag Football", location: "New Town, Edinburgh", description: "", price_per_day: 8)
jean3 = Gear.create!(user_id: jspence.id, brand: "O'Neills", model: "Irish National", category: "Flag Football", location: "New Town, Edinburgh", description: "Flag Football Jersey, size M", price_per_day: 5)
jean4 = Gear.create!(user_id: jspence.id, brand: "Generic", model: "Shin Guard", category: "Soccer", location: "New Town, Edinburgh", description: "Soccer Shin Pads", price_per_day: 5)
jean4 = Gear.create!(user_id: jspence.id, brand: "Nike", model: "Hypervenom Phenol", category: "Soccer", location: "New Town, Edinburgh", description: "size: EU40", price_per_day: 10)

# patrick
pat1 = Gear.create!(user_id: pholme.id, brand: "Galloway", model: "Warbird Set", category: "Snowboarding", location: "Glasgow", description: "Callaway Golf Clubs Set \
Callaway Big Bertha 460 Driver 10 deg..S Flex \
Callaway Big Bertha 3 Wood.....R Flex \
Callaway X18 Irons Set..3- SW. Reg Graphite .Excellent Condition. \
Callaway Warbird Tour Cart Bag.Purchased At Xmas For £100... Carry Strap Included..Clear Hood Included", price_per_day: 40)

# reggie
reg1 = Gear.create!(user_id: regli.id, brand: "Head", model: "Radical Intellifiber", category: "Tennis", location: "Dublin, Ireland", description: "Head iradical Intellifiber Tennis Racket MP. Condition is Used.", price_per_day: 15)
reg2 = Gear.create!(user_id: regli.id, brand: "Babolat", model: "Pure Aero", category: "Tennis", location: "Dublin, Ireland", description: "Babolat pure aero tennis racket. Condition is Used. Grip size 2 but I always used an overgrip to make a 3.", price_per_day: 20)
reg3 = Gear.create!(user_id: regli.id, brand: "Head", model: "Radical Combi Racket Bag", category: "Tennis", location: "Dublin, Ireland", description: "HEAD RADICAL 6R COMBI TENNIS RACKET BAG (BLACK/BLUE/GREEN/ORANGE). Clean and in very good condition.", price_per_day: 10)

# zack
z1 = Gear.create!(user_id: zfoo.id, brand: "YES", model: "Typo Union", category: "Snowboarding", location: "Leyton, London", description: "Size 154cm, comes with Union Flight Binds and bag", price_per_day: 25)
z2 = Gear.create!(user_id: zfoo.id, brand: "Burton", model: "Process", category: "Snowboarding", location: "Leyton, London", description: "Size 157 Burton Process V Rocker Snowboard, Burton Custom EST Bindings, Dakine Snowboard Bag. Northwave size 10 U.K. Boots", price_per_day: 35)
z3 = Gear.create!(user_id: zfoo.id, brand: "Head", model: "Intergrade 007 Pro", category: "Skiing", location: "Leyton, London", description: "Head Intergrade 007 163cm Ski With Bindings And Poles. Condition is Used.", price_per_day: 30)
z4 = Gear.create!(user_id: zfoo.id, brand: "Burton", model: "Ruler", category: "Skiing", location: "Leyton, London", description: "Size 11. Lovely comfortable snowboard boots from a well respected label - Burton.  Great condition.", price_per_day: 12)

# alexis
al1 = Gear.create!(user_id: ataylo.id, brand: "Boreal", model: "Pyros", category: "Rock Climbing", location: "Nottinghill, London", description: "Great pair of shoes that still have plenty of life left in them! Would highly recommend this brand.", price_per_day: 12)
al2 = Gear.create!(user_id: ataylo.id, brand: "Unbranded", model: "Chalk Bag", category: "Rock Climbing", location: "Nottinghill, London", description: "Hand made chalk bag, lined with fleece and finished with elastic and toggle. Belt loop included.", price_per_day: 13)




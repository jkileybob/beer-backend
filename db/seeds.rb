# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

################# USER:
User.create(
  username: "kb",
  password: "gay",
  avatar: "https://placekitten.com/g/200/300",
  bio: " I love Lindsay",
  location: "Washington, D.C."
)

3.times do
  User.create(
    username: Faker::TvShows::ParksAndRec.character,
    password: "hi",
    avatar: "https://placekitten.com/200/300",
    bio: Faker::GreekPhilosophers.quote,
    location: Faker::Address.city
  )
end

###################### BREWERY:
Brewery.create(
  name: "Right Proper Brewing Company",
  street: "624 T Street NW",
  city: "Washington",
  state: "District of Columbia",
  postal_code: "20001",
  country: "United States",
  longitude: "-77.021375",
  latitude: "38.915412",
  phone: "(202)607-2337"
)

# 3.times do
#   Brewery.create(
#     name: Faker::Beer.brand,
#     street: Faker::Address.street_address,
#     city: Faker::Address.city,
#     state: Faker::Address.state,
#     postal_code: Faker::Address.zip_code,
#     country: Faker::Address.country,
#     longitude: Faker::Address.longitude,
#     latitude: Faker::Address.latitude,
#     phone: Faker::PhoneNumber.cell_phone
#   )
# end


####################################### BEER:
Beer.create(
  user_id: 1,
  brewery_id: 1,
  name: 'Ornette',
  style: 'Grisette',
  abv: "3.5%"
)
Beer.create(
  user_id: 1,
  brewery_id: 1,
  name: 'COMRADE!',
  style: 'Anti-Imperial Stout',
  abv: "2.3%"
)


# Beer.create({user_id: 1, brewery_id: 1, name: 'Ornette', style: 'Grisette', abv: "3.5%"})
# Beer.create({user_id: 1, brewery_id: 1, name: 'Raised By Wolves', style: 'Pale Ale', abv: "5.5%"})


# 15.times do
#   Beer.create(
#     user_id: 1,
#     brewery_id: 1,
#     name: Faker::Beer.name,
#     style: Faker::Beer.style,
#     abv: Faker::Beer.alcohol
#   )
# end


############################# ETC:

# User.create({username: "kb", password: "gay", avatar: "https://unionproductionsblog.files.wordpress.com/2010/04/kileybobbitt.jpg?w=500", bio: "bitch",
#   location: "D.C. Baby"})

# Comment.create({beer_id: 1, text:"ornette is light and delicious"})

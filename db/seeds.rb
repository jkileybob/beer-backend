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

User.create(
  username: "robin",
  password: "hi",
  avatar: "https://www.fofrescue.org/wp-content/uploads/2018/04/Preparing-200x300.jpg",
  bio: " I love Ted",
  location: "Washington, D.C."
)

# 3.times do
#   User.create(
#     username: Faker::TvShows::ParksAndRec.character,
#     password: "hi",
#     avatar: "https://placekitten.com/200/300",
#     bio: Faker::GreekPhilosophers.quote,
#     location: Faker::Address.city
#   )
# end

###################### BREWERY:
# Brewery.create(
#   id: 1781,
#   name: "Right Proper Brewing Company",
#   brewery_type: "brewpub",
#   street: "624 T Street NW",
#   city: "Washington",
#   state: "District of Columbia",
#   postal_code: "20001",
#   country: "United States",
#   longitude: "-77.021375",
#   latitude: "38.915412",
#   phone: "(202)607-2337",
#   website_url: "http://www.rightproperbrewing.com"
# )

##########  example from Open Brewery DB:
# {
#   "id": 1780,
#   "name": "Right Proper Brewing Company",
#   "brewery_type": "micro",
#   "street": "920 Girard St NE",
#   "city": "Washington",
#   "state": "District of Columbia",
#   "postal_code": "20017-3424",
#   "country": "United States",
#   "longitude": "-76.9930707764239",
#   "latitude": "38.9267988",
#   "phone": "2026072337",
#   "website_url": "http://www.rightproperbrewing.com",
#   "updated_at": "2018-08-24T00:26:18.318Z",
#   "tag_list": [
#
#   ]
# },

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
# Beer.create(
#   user_id: 1,
#   brewery_id: 1781,
#   name: 'Ornette',
#   style: 'Grisette',
#   abv: "3.5%"
# )
#
# Beer.create(
#   user_id: 1,
#   brewery_id: 1780,
#   name: 'Raised By Wolves',
#   style: 'Aromatic Pale Ale',
#   abv: "5.5%"
# )
#
# Beer.create(
#   user_id: 1,
#   brewery_id: 1781,
#   name: 'COMRADE!',
#   style: 'Anti-Imperial Stout',
#   abv: "2.3%"
# )


# Beer.create({user_id: 1, brewery_id: 1781, name: 'Ornette', style: 'Grisette', abv: "3.5%"})
# Beer.create({user_id: 1, brewery_id: 1780, name: 'Raised By Wolves', style: 'Aromatic Pale Ale', abv: "5.5%"})
# Beer.create({user_id: 1, brewery_id: 1781, name: 'COMRADE!', style: 'Anti-Imperial Stout', abv: "2.3%"})

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

User.create({username: "robin", password: "hi", avatar: "https://unionproductionsblog.files.wordpress.com/2010/04/kileybobbitt.jpg?w=500", bio: "anything else", location: "D.C. Baby"})

# Comment.create({beer_id: 1, text:"ornette is light and delicious"})

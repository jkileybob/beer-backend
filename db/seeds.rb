# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

################# USER:

User.create({username: "Kiley", password: "gay", avatar: "https://unionproductionsblog.files.wordpress.com/2010/04/kileybobbitt.jpg?w=500", bio: "hello, world", location: "D.C."})
User.create({username: "Lindsay", password: "gay", avatar: "https://images.squarespace-cdn.com/content/v1/51e6e466e4b018cade39e9d0/1419644835644-973VY03RSM5MOD3E62X2/ke17ZwdGBToddI8pDm48kMXRibDYMhUiookWqwUxEZ97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0luUmcNM2NMBIHLdYyXL-Jww_XBra4mrrAHD6FMA3bNKOBm5vyMDUBjVQdcIrt03OQ/Lindsay+%28serious%29.JPG?format=300w", bio: "I love Ted.", location: "the District"})
User.create({username: "AOC", password: "hi", avatar: "https://thehill.com/sites/default/files/styles/thumb_small_article/public/ocasiocortezalexandria_111318sr_lead.jpg?itok=1KwLr6cq", bio: "To me, what socialism means is to guarantee a basic level of dignity. It's asserting the value of saying that the America we want and the America that we are proud of is one in which all children can access a dignified education. It's one in which no person is too poor to have the medicines they need to live.", location: "the Bronx"})

# User.create(
#   username: "kb",
#   password: "gay",
#   avatar: "https://placekitten.com/g/200/300",
#   bio: " I love Lindsay",
#   location: "Washington, D.C."
# )
#
# User.create(
#   username: "Lindsay",
#   password: "gay",
#   avatar: "https://www.fofrescue.org/wp-content/uploads/2018/04/Preparing-200x300.jpg",
#   bio: " I love Ted",
#   location: "Washington, D.C."
# )

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
# Brewery.create({id: 1781, name: "Right Proper Brewing Company", brewery_type: "brewpub", street: "624 T Street NW", city: "Washington", state: "District of Columbia", postal_code: "20001", country: "United States", longitude: "-77.021375", latitude: "38.915412", phone: "(202)607-2337", website_url: "http://www.rightproperbrewing.com"})
Brewery.create({id: 1781})
# Right Proper Shaw
Brewery.create({id: 6780})
# Jester King

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

###########Favorites:
Favorite.create({user_id: 1, brewery_id: 1781})
Favorite.create({user_id: 1, brewery_id: 6780})

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

UserBeer.create({user_id: 1, beer_id: 1})

BrewBeer.create({beer_id: 1, brewery_id: 1781})
Beer.create({user_id: 1, brewery_id: 1781, name: 'Ornette', style: 'Grisette', abv: "3.5%", tasting_note: "light, crisp, great spice character, quenching", rating: 5, comment: "Eloquent and sessionble. I could drink this beer all night." })
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


# Comment.create({beer_id: 1, text:"ornette is light and delicious"})

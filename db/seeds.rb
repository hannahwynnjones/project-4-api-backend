[User, Trip, Leg, Airport, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

#USERS

h = User.create!(
username: "husername",
email: "h@h",
first_name: "hannah",
second_name: "wj",
image: "https://cdn.pixabay.com/photo/2012/04/01/12/24/penguin-23159_960_720.png",
password: "p",
password_confirmation: "p"
)

w = User.create!(
username: "wusername",
email: "w@w",
first_name: "hannah",
second_name: "wj",
image: "https://cdn.pixabay.com/photo/2014/04/03/00/35/giraffe-308771_960_720.png",
password: "p",
password_confirmation: "p"
)

j = User.create!(
username: "jusername",
email: "j@j",
first_name: "hannah",
second_name: "wj",
image: "http://images6.fanpop.com/image/photos/33000000/pikachu-pikachu-33005706-448-500.png",
password: "p",
password_confirmation: "p"
)

hannah = User.create!(
username: "hannahusername",
email: "han@han",
first_name: "hannah",
second_name: "wj",
image: "https://thumbs.dreamstime.com/x/lovely-grey-cat-banner-2961103.jpg",
password: "p",
password_confirmation: "p"
)

#================AIRPORTS - =======will add to these later==================

sfo = Airport.create!(name: "San Francisco", country: "United States of America", code: "SFO", lat: "37.7749", lng: "122.4194", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/GoldenGateBridge-001.jpg/270px-GoldenGateBridge-001.jpg")
hkg = Airport.create!(name: "Hong Kong", country: "Hong Kong", code: "HKG", lat: "22.3964", lng: "114.1095", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Overlook_Hong_Kong_Island_north_coast%2C_Victoria_Harbour_and_Kowloon_from_middle_section_of_Lugard_Road_at_daytime_%28enlarged_version_and_better_contrast%2C_revised%29.jpg/350px-thumbnail.jpg")
kul = Airport.create!(name: "Kuala Lumpur", country: "Malaysia", code: "KUL", lat: "3.1390", lng: "101.6869", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Moonrise_over_kuala_lumpur.jpg/800px-Moonrise_over_kuala_lumpur.jpg")
syd = Airport.create!(name: "Sydney", country: "Australia", code: "SYD", lat: "-33.8688", lng: "151.2093", image: "http://brianzirate.weebly.com/uploads/3/8/0/8/38088491/6964591_orig.jpg")
jfk = Airport.create!(name: "New York", country: "United States of America", code: "JFK", lat: "40.7128", lng: "-74.0059", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Statue_of_Liberty_7.jpg/250px-Statue_of_Liberty_7.jpg")
cdg = Airport.create!(name: "Paris", country: "France", code: "CDG", lat: "48.8566", lng: "2.3522", image: "https://i2.wp.com/travellersplanetblog.com/wp-content/uploads/2014/05/eiffel_tower_paris_france_4.png")
lgw = Airport.create!(name: "London Gatwick", country: "UK", code: "LGW", lat: "51.1537", lng: "-0.1821", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Clock_Tower_-_Palace_of_Westminster%2C_London_-_May_2007.jpg/320px-Clock_Tower_-_Palace_of_Westminster%2C_London_-_May_2007.jpg")
ltn = Airport.create!(name: "London Luton", country: "UK", code: "LTN", lat: "51.8763", lng: "-0.3717", image: "https://upload.wikimedia.org/wikipedia/commons/d/d0/Routemaster.JPG")
lhr = Airport.create!(name: "London Heathrow", country: "UK", code: "LHR", lat: "51.4700", lng: "-0.4543", image: "http://www.realworldimage.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/11939.jpg")
bhx = Airport.create!(name: "Birmingham", country: "UK", code: "BHX", lat: "52.4862", lng: "-1.8904", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Bullring_Bull.jpg/800px-Bullring_Bull.jpg")
man = Airport.create!(name: "Manchester", country: "UK", code: "MAN", lat: "53.3588", lng: "-2.2727", image: "http://i.telegraph.co.uk/multimedia/archive/01396/old_trafford_1396521b.jpg")
gla = Airport.create!(name: "Edinburgh", country: "UK", code: "EDI", lat: "55.9508", lng: "-3.3615", image: "http://www.edinburghspotlight.com/wp-content/uploads/2011/10/P1030026.jpg")

#===============TRIPS ===================================================

test1 = Trip.create!(
  name: "testParis",
  description: "shopping trip",
  user: hannah,
  attendees: [h, w],
  start_date: DateTime.new(2017, 3, 28),
  airport: lgw
  )

  # test2 = Trip.create!(
  #   name: "testHK",
  #   description: "Hong kong baby!",
  #   user: h,
  #   attendees: [hannah, w, j],
  #   # dates: [Date.new(2017, 4, 28), Date.new(2017, 5, 10), Date.new(2017, 4, 28)],
  #   date_one: DateTime.new(2017, 2, 18),
  #   date_two: DateTime.new(2017, 5, 10),
  #   date_three: DateTime.new(2017, 6, 20),
  #   airports: [lhr, hkg, lhr]
  #   )

#/////////////////////

leg1 = Leg.create!(
  trip: test1,
  airport: hkg,
  start_date: DateTime.new(2017, 4, 28),
  price: 139,
  airline: "BA"
)

leg2 = Leg.create!(
  trip: test1,
  airport: syd,
  start_date: DateTime.new(2017, 5, 28),
  price: 129,
  airline: "BA"
)




  #=================COMMENTS - May not add these seeds======================

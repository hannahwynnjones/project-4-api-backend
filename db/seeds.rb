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
Airport.create!(name: "Bangkok", country: "Thailand", code: "DMK", lat: "13.9133", lng: "100.6042", continent:"Asia", image: "http://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1471360251/flight-BANGKOK0816.jpg?itok=PnVQD1HS")
   Airport.create!(name: "Singapore", country: "Singapore", code: "SIN", lat: "1.3521", lng: "103.8198", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRShI0xhYO5tIzcKng227T_ifBXoGZ7fjf6GEu2kvk5LuDettP1", continent:"Asia")
   Airport.create!(name: "Kaohsiung", country: "Taiwan", code: "KHH", lat: "", lng: "", continent:"", image: "https://media-cdn.tripadvisor.com/media/photo-s/01/29/7a/d1/caption.jpg")
   Airport.create!(name: "Da Nang", country: "Vietnam", code: "DAD", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Nairobi", country: "Kenya", code: "NBO", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Manila", country: "Philippines", code: "MNL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Istanbul", country: "Turkey", code: "SAW", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Istanbul", country: "Turkey", code: "IST", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Jeddah", country: "Saudi Arabia", code: "JED", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Amman", country: "Jordan", code: "AMM", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Pekanbaru", country: "Indonesia", code: "PKU", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Macau", country: "Macau", code: "MKM", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Kuala Terengganu ", country: "Malaysia", code: "TGG", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Phnom Penh", country: "Cambodia", code: "PNH", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Yangon", country: "Myanmar", code: "RGN", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Bandar Seri Begawan", country: "Brunei", code: "BWN", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Doha", country: "Qatar", code: "DOH", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Cairo", country: "Egypt", code: "CAI", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Algiers", country: "Algeria", code: "ALG", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Kuwait", country: "Kuwait", code: "KWI", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Tel Aviv", country: "Israel", code: "TLV", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Vientiane", country: "Laos", code: "VTE", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Muscat", country: "Oman", code: "MCT", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Auckland", country: "New Zealand", code: "AKL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Santiago", country: "Chile", code: "SCL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Vancouver", country: "Canada", code: "YVR", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Mexico City", country: "Mexico", code: "MEX", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Tehran", country: "Iran", code: "IKA", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Dubai", country: "United Arab Emirates", code: "DXB", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Beirut", country: "Lebanon", code: "BEY", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Baghdad", country: "Iraq", code: "BGW", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Nashville", country: "United States", code: "BNA", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Melbourne", country: "Australia", code: "MEL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Gold Coast", country: "Australia", code: "OOL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Shenzhen", country: "Shenzhen", code: "SZX", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Hyderabad", country: "India", code: "HYD", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Male", country: "Maldives", code: "MLE", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Seoul", country: "South Korea", code: "ICN", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Tashkent", country: "Uzbekistan", code: "TAS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Baku", country: "Azerbaijan", code: "GYD", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Dhaka", country: "Bangladesh", code: "DAC", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Sapporo", country: "Japan", code: "CTS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Kathmandu", country: "Nepal", code: "KTM", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Panama City", country: "Panama", code: "PTY", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Tbilisi", country: "Georgia", code: "TBS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Lahore", country: "Pakistan", code: "LHE", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Colombo", country: "Sri Lanka", code: "CMB", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Vladivostok", country: "Russia", code: "VVO", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Warsaw", country: "Poland", code: "WAW", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Helsinki", country: "Finland", code: "HEL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Vienna", country: "Austria", code: "VIE", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Madrid", country: "Spain", code: "MAD", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Lisbon", country: "Portugal", code: "LIS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Tallinn", country: "Estonia", code: "TLL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Stockholm", country: "Sweden", code: "ARN", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Copenhagen", country: "Denmark", code: "CPH", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Zanzibar", country: "Tanzania", code: "ZNZ", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Lagos", country: "Nigeria", code: "LOS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Khartoum", country: "Sudan", code: "KRT", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Mahe Island", country: "Seychelles", code: "SEZ", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Cape Town", country: "South Africa", code: "CPT", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Belgrade", country: "Serbia", code: "BEG", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Milan", country: "Italy", code: "MXP", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Budapest", country: "Hungary", code: "BUD", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Zagreb", country: "Croatia", code: "ZAG", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Athens", country: "Greece", code: "ATH", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Dublin", country: "Ireland", code: "DUB", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Amsterdam", country: "Netherlands", code: "AMS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Oslo", country: "Norway", code: "OSL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Brussels", country: "Belgium", code: "BRU", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Basel", country: "Switzerland", code: "BSL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Kyiv", country: "Ukraine", code: "KBP", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Newcastle", country: "United Kingdom", code: "NCL", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Minsk", country: "Minsk", code: "MSQ", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Prague", country: "Czech Republic", code: "PRG", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Dusseldorf", country: "Germany", code: "DUS", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "Bangui", country: "Central African Republic", code: "BGF", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")

# ==================================================EUROPE===================================================================
Airport.create!(name: "Moscow", country: "Russia", code: "MOW", lat: "55.7558", lng: "37.6173", continent:"europe", image: "")
Airport.create!(name: "Catania Fontanarossa", country: "CTA", code: "", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Paris", country: "", code: "PAR", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Tenerife", country: "", code: "TCI", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Amsterdam ", country: "", code: "AMS", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Toulouse ", country: "France", code: "TLS", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Madrid ", country: "Spain", code: "MAD", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Bergen ", country: "", code: "BGO", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Frankfurt ", country: "Germany", code: "FRA", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Brussels ", country: "Belgium", code: "BRU", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Barcelona ", country: "Spain", code: "BCN", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Nice ", country: "", code: "NCE", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Oslo ", country: "", code: "OSL", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Trondheim ", country: "", code: "TRD", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Dublin ", country: "", code: "DUB", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Copenhagen ", country: "", code: "CPH", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Malaga ", country: "", code: "AGP", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Gran Canaria Las Palmas ", country: "", code: "LPA", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Rome ", country: "", code: "ROM", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Cologne ", country: "", code: "CGN", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Munich ", country: "", code: "MUC", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Palermo ", country: "", code: "PMO", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Milan ", country: "", code: "MIL", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Stuttgart ", country: "Germany", code: "STR", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "St Petersburg Pulkovo ", country: "", code: "LED", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Lisbon ", country: "", code: "LIS", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Palma - Majorca ", country: "", code: "PMI", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Ibiza ", country: "", code: "IBZ", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Zurich ", country: "", code: "ZRH", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Marseille ", country: "", code: "MRS", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Alicante ", country: "", code: "ALC", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Lyon ", country: "", code: "LYS", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Berlin ", country: "", code: "BER", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Naples ", country: "", code: "NAP", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Stockholm ", country: "", code: "STO", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Stavanger ", country: "", code: "SVG", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Athens", country: "", code: "ATH", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Bordeaux ", country: "", code: "BOD", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Faro ", country: "", code: "FAO", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Geneva ", country: "", code: "GVA", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Vienna ", country: "", code: "VIE", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Helsinki Vantaa ", country: "", code: "HEL", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Hamburg ", country: "", code: "HAM", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Cagliari ", country: "", code: "CAG", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Dusseldorf ", country: "", code: "DUS", lat: "", lng: "", continent:"europe", image: "")

#NOT DIRECT TO UK
Airport.create!(name: "Simferopol", country: "", code: "SIP", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Ercan", country: "", code: "ECN", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Sochi", country: "", code: "AER", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Ekaterinburg ", country: "", code: "SVX", lat: "", lng: "", continent:"europe", image: "")
Airport.create!(name: "Novosibirsk ", country: "", code: "OVB", lat: "", lng: "", continent:"europe", image: "")

#================================AFRICA=================================================
Airport.create!(name: "Johannesburg ", country: "", code: "JNB", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Marrakech Menara ", country: "", code: "RAK", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Cape Town ", country: "", code: "CPT", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Addis Ababa ", country: "", code: "ADD", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Cairo ", country: "", code: "CAI", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Luanda ", country: "", code: "LAD", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Lagos ", country: "", code: "LOS", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Hurghada ", country: "", code: "HRG", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Abuja ", country: "", code: "ABV", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Accra ", country: "", code: "ACC", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Nairobi ", country: "", code: "NBO", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Saint-Denis ", country: "", code: "RUN", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Algiers ", country: "", code: "ALG", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Sharm El Sheikh ", country: "", code: "SSH", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Port Elizabeth ", country: "South Africa", code: "PLZ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Mauritius ", country: "", code: "MRU", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Casablanca Mohamed V. ", country: "", code: "CMN", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Rabat ", country: "", code: "RBA", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Alexandria ", country: "Egypt", code: "ALY", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Fes-Saiss ", country: "", code: "FEZ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Tunis Carthage ", country: "", code: "TUN", lat: "", lng: "", continent:"Africa", image: "")


Airport.create!(name: "Durban King Shaka International ", country: "", code: "DUR", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Maputo ", country: "", code: "MPM", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Dar Es Salaam ", country: "", code: "DAR", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Praslin Island ", country: "", code: "PRI", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Khartoum ", country: "", code: "KRT", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Mahe Island ", country: "", code: "SEZ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Port Harcourt ", country: "", code: "PHC", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Gaborone ", country: "", code: "GBE", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Mombasa ", country: "", code: "MBA", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Mwanza ", country: "", code: "MWZ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "East London ", country: "", code: "ELS", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Praia ", country: "", code: "RAI", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Zanzibar ", country: "", code: "ZNZ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Constantine ", country: "", code: "CZL", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Ben Bella Airport ", country: "", code: "ORN", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Owerri ", country: "", code: "QOW", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Windhoek ", country: "", code: "WDH", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Abidjan ", country: "", code: "ABJ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Harare ", country: "", code: "HRE", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Entebbe ", country: "", code: "EBB", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Mara Lodges ", country: "", code: "MRE", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Pointe Noire ", country: "", code: "PNR", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "George ", country: "", code: "GRJ", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Kilimanjaro ", country: "", code: "JRO", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Bloemfontein ", country: "", code: "BFN", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Aswan Daraw ", country: "", code: "ASW", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Lake Manyara ", country: "", code: "LKY", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Brazzaville ", country: "", code: "BZV", lat: "", lng: "", continent:"Africa", image: "")
Airport.create!(name: "Seronera ", country: "", code: "SEU", lat: "", lng: "", continent:"Africa", image: "")

#================================Arctic Region (Europe) =================================
Airport.create!(name: "Reykjavik ", country: "", code: "REK", lat: "", lng: "", continent:"Artic", image: "")
#
Airport.create!(name: "Akureyri ", country: "", code: "AEY", lat: "", lng: "", continent:"Artic", image: "")
Airport.create!(name: "Husavik ", country: "", code: "HZK", lat: "", lng: "", continent:"Artic", image: "")
Airport.create!(name: "Egilsstadir ", country: "", code: "EGS", lat: "", lng: "", continent:"Artic", image: "")
Airport.create!(name: "Vestmannaeyjar ", country: "", code: "VEY", lat: "", lng: "", continent:"Artic", image: "")
Airport.create!(name: "Isafjordur ", country: "", code: "IFJ", lat: "", lng: "", continent:"Artic", image: "")

#========================Airports in Arctic Region (North America) - most popular================
#not direct flights from uk
Airport.create!(name: "Kangerlussuaq ", country: "", code: "", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Neerlerit Inaat ", country: "CNP", code: "", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Nuuk ", country: "", code: "GOH", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Narsarsuaq ", country: "", code: "UAK", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Ilulissat ", country: "", code: "JAV", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Sisimiut ", country: "", code: "JHS", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Kulusuk Island ", country: "", code: "KUS", lat: "", lng: "", continent:"North America Artic", image: "")
Airport.create!(name: "Aasiaat ", country: "", code: "JEG", lat: "", lng: "", continent:"North America Artic", image: "")

#==================================ASIA=============================
Airport.create!(name: "Shanghai ", country: "China", code: "SHA", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Osaka ", country: "Japan", code: "OSA", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Beijing ", country: "", code: "BJS", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Sapporo ", country: "", code: "SPK", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Guangzhou ", country: "", code: "CAN", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Kolkata ", country: "", code: "CCU", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Tokyo ", country: "", code: "TYO", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Fukuoka ", country: "", code: "FUK", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Chengdu ", country: "", code: "CTU", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Hyderabad ", country: "", code: "HYD", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "New Delhi ", country: "", code: "DEL", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Okinawa Naha ", country: "", code: "OKA", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Chongqing ", country: "", code: "CKG", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Chennai ", country: "", code: "MAA", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Mumbai ", country: "", code: "BOM", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Seoul ", country: "", code: "SEL", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Bengaluru ", country: "", code: "BLR", lat: "", lng: "", continent:"Asia", image: "")

#Not direct flights
Airport.create!(name: "Kunming ", country: "", code: "KMG", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Sanya ", country: "", code: "SYX", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Shenzhen Bao'an International ", country: "", code: "SZX", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Fuzhou ", country: "", code: "FOC", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Xi An Xianyang ", country: "", code: "XIY", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Nanning ", country: "", code: "NNG", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Hangzhou ", country: "", code: "HGH", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Lanzhou ", country: "", code: "LHW", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Urumqi ", country: "", code: "URC", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Jinan Yaoqiang ", country: "", code: "TNA", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Xiamen ", country: "", code: "XMN", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Taiyuan ", country: "", code: "TYN", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Nanking / Nanjing ", country: "", code: "NKG", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Changchun ", country: "", code: "CGQ", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Wuhan ", country: "", code: "WUH", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Hohhot ", country: "", code: "HET", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Zhengzhou ", country: "", code: "CGO", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Jeju ", country: "", code: "CJU", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Qingdao ", country: "", code: "TAO", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Zhuhai ", country: "", code: "ZUH", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Changsha ", country: "", code: "CSX", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Yinchuan ", country: "", code: "INC", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Harbin ", country: "", code: "HRB", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Wenzhou ", country: "", code: "WNZ", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Haikou ", country: "", code: "HAK", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Hefei ", country: "", code: "HFE", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Dalian ", country: "", code: "DLC", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Nanchang ", country: "", code: "KHN", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Tianjin ", country: "", code: "TSN", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Ningbo ", country: "", code: "NGB", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Guiyang ", country: "", code: "KWE", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Guilin  ", country: "", code: "KWL", lat: "", lng: "", continent:"Asia", image: "")
Airport.create!(name: "Shenyang ", country: "", code: "SHE", lat: "", lng: "", continent:"Asia", image: "")

#===============Airports in Central America and the Caribbean - most popular============
#with direct flights from uk
Airport.create!(name: "San Juan", country: "Puerto Rico", code: "SJU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Bridgetown ", country: "", code: "BGI", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Punta Cana ", country: "", code: "PUJ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Tobago ", country: "", code: "TAB", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Montego Bay", country: "", code: "MBJ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Saint John's ", country: "", code: "ANU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "San Jose ", country: "Costa Rica", code: "SJO", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "St Croix Island ", country: "", code: "STX", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Nassau International ", country: "", code: "NAS", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Varadero ", country: "", code: "VRA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Havana ", country: "Cuba", code: "HAV", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "St. George ", country: "", code: "GND", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Saint Thomas Cyril E King ", country: "", code: "STT", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Basseterre", country: "", code: "SKB", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Kingston ", country: "Jamaica", code: "KIN", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Cayo Coco ", country: "", code: "CCC", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Castries ", country: "", code: "SLU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")

#Airports not with direct flights
Airport.create!(name: "Panama City ", country: "Panama", code: "PTY", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Pointe-a-Pitre", country: "", code: "PTP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Oranjestad ", country: "", code: "AUA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Fort De France ", country: "", code: "FDF", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Guatemala City ", country: "", code: "GUA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "San Pedro", country: "Belize", code: "SPR", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Santo Domingo ", country: "Dominican Republic", code: "SDQ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Curacao ", country: "", code: "CUR", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "San Salvador ", country: "El Salvador", code: "SAL", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Freeport ", country: "Bahamas", code: "FPO", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Managua ", country: "", code: "MGA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Puerto Plata ", country: "", code: "POP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "St Maarten ", country: "", code: "SXM", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Santa Clara ", country: "", code: "SNU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Grand Cayman Island ", country: "", code: "GCM", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Placencia", country: "", code: "PLJ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Liberia ", country: "", code: "LIR", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Marsh Harbour ", country: "", code: "MHH", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Santiago ", country: "Dominican Republic", code: "STI", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Santiago ", country: "Cuba", code: "SCU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Providenciales ", country: "", code: "PLS", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "George Town ", country: "Bahamas", code: "GGT", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Belize City ", country: "", code: "BZE", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "St Martin Esperance ", country: "", code: "SFG", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Port Au Prince", country: "", code: "PAP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Roatan ", country: "", code: "RTB", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Port Of Spain ", country: "", code: "POS", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Ponce ", country: "", code: "PSE", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "San Pedro Sula ", country: "", code: "SAP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Dangriga ", country: "", code: "DGA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Tegucigalpa ", country: "", code: "TGU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Caye Caulker ", country: "", code: "CUK", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
Airport.create!(name: "Aguadilla ", country: "", code: "BQN", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")

#====================Airports in Middle East - most popular==============
#with direct flights
Airport.create!(name: "Istanbul ", country: "", code: "IST", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Muscat ", country: "", code: "MCT", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Riyadh ", country: "", code: "RUH", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Tel Aviv ", country: "", code: "TLV", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Dubai ", country: "", code: "DXB", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Bodrum ", country: "", code: "BJV", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Jeddah ", country: "", code: "JED", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Kuwait ", country: "", code: "KWI", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Tehran ", country: "", code: "THR", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Bahrain ", country: "", code: "BAH", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Izmir ", country: "", code: "ADB", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Dalaman ", country: "", code: "DLM", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Antalya ", country: "", code: "AYT", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Amman ", country: "", code: "AMM", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Abu Dhabi ", country: "", code: "AUH", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Beirut ", country: "", code: "BEY", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Hamad International ", country: "DOH", code: "", lat: "", lng: "", continent:"Middle East", image: "")

#other airports
Airport.create!(name: "Ankara Esenboga ", country: "", code: "ESB", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Van ", country: "", code: "VAN", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Dammam ", country: "", code: "DMM", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Ordu/Giresun ", country: "", code: "OGU", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Adana ", country: "", code: "ADA", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Erzurum ", country: "", code: "ERZ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Abha ", country: "", code: "AHB", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Taif ", country: "", code: "TIF", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Trabzon ", country: "", code: "TZX", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Antakya ", country: "", code: "HTY", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Mashhad ", country: "", code: "MHD", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Hail ", country: "", code: "HAS", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Sharjah ", country: "", code: "SHJ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Eilat ", country: "", code: "ETH", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Madinah ", country: "", code: "MED", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Elazig ", country: "", code: "EZS", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Jazan ", country: "", code: "GIZ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Gassim ", country: "", code: "ELQ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Kayseri ", country: "", code: "ASR", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Kish Island ", country: "", code: "KIH", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Gaziantep ", country: "", code: "GZT", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Erbil ", country: "", code: "EBL", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Shiraz ", country: "", code: "SYZ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Malatya  ", country: "", code: "MLX", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Ahwaz ", country: "", code: "AWZ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Tabriz ", country: "", code: "TBZ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Samsun Carsamba ", country: "", code: "SZF", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Isfahan ", country: "", code: "IFN", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Tabuk ", country: "", code: "TUU", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Denizli Cardak ", country: "", code: "DNZ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Konya ", country: "", code: "KYA", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Sanliurfa ", country: "", code: "SFQ", lat: "", lng: "", continent:"Middle East", image: "")
Airport.create!(name: "Diyarbakir ", country: "", code: "DIY", lat: "", lng: "", continent:"Middle East", image: "")

#=================Airports in North America - most popular=============
#with direct flights
Airport.create!(name: "New York ", country: "United States", code: "NYC", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "San Jose International ", country: "", code: "SJC", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Washington ", country: "United States", code: "WAS", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "St Louis ", country: "", code: "STL", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Chicago ", country: "", code: "CHI", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Raleigh / Durham ", country: "", code: "RDU", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Atlanta ", country: "", code: "ATL", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "New Orleans Louis Armstrong ", country: "", code: "MSY", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Los Angeles International ", country: "", code: "LAX", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Toronto ", country: "", code: "YTO", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Dallas ", country: "", code: "DFW", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Oakland Metropolitan Oak ", country: "", code: "OAK", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Denver International ", country: "", code: "DEN", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Austin-Bergstrom ", country: "", code: "AUS", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Las Vegas Mccarran ", country: "", code: "LAS", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Sacramento ", country: "", code: "SAC", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "San Francisco International ", country: "", code: "SFO", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Honolulu International ", country: "", code: "HNL", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Seattle ", country: "", code: "SEA", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Santa Ana John Wayne ", country: "", code: "SNA", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "Miami ", country: "", code: "MIA", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")











   Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"Africa", image: "")

#==============TRIPS ===================================================

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

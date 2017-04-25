[User, Trip, Leg, Airport, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

#USERS

hannah = User.create!(
username: "hwj",
email: "h@h",
first_name: "Hannah",
second_name: "Wynn Jones",
# image_src: "https://cdn.pixabay.com/photo/2012/04/01/12/24/penguin-23159_960_720.png",
password: "p",
password_confirmation: "p"
)

# w = User.create!(
# username: "wusername",
# email: "w@w",
# first_name: "hannah",
# second_name: "wj",
# image: "https://cdn.pixabay.com/photo/2014/04/03/00/35/giraffe-308771_960_720.png",
# password: "p",
# password_confirmation: "p"
# )
#
# j = User.create!(
# username: "jusername",
# email: "j@j",
# first_name: "hannah",
# second_name: "wj",
# image: "http://images6.fanpop.com/image/photos/33000000/pikachu-pikachu-33005706-448-500.png",
# password: "p",
# password_confirmation: "p"
# )
#
# hannah = User.create!(
# username: "hannahusername",
# email: "han@han",
# first_name: "hannah",
# second_name: "wj",
# image: "https://thumbs.dreamstime.com/x/lovely-grey-cat-banner-2961103.jpg",
# password: "p",
# password_confirmation: "p"
# )


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
Airport.create!(name: "Singapore", country: "Singapore", code: "SIN", lat: "1.3521", lng: "103.8198", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRShI0xhYO5tIzcKng227T_ifBXoGZ7fjf6GEu2kvk5LuDettP1", continent:"Asia")
  #  Airport.create!(name: "Kaohsiung", country: "Taiwan", code: "KHH", lat: "", lng: "", continent:"", image: "https://media-cdn.tripadvisor.com/media/photo-s/01/29/7a/d1/caption.jpg")
  #  Airport.create!(name: "Da Nang", country: "Vietnam", code: "DAD", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Nairobi", country: "Kenya", code: "NBO", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Manila", country: "Philippines", code: "MNL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Istanbul", country: "Turkey", code: "SAW", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Istanbul", country: "Turkey", code: "IST", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Jeddah", country: "Saudi Arabia", code: "JED", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Amman", country: "Jordan", code: "AMM", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Pekanbaru", country: "Indonesia", code: "PKU", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Macau", country: "Macau", code: "MKM", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Kuala Terengganu ", country: "Malaysia", code: "TGG", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Phnom Penh", country: "Cambodia", code: "PNH", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Yangon", country: "Myanmar", code: "RGN", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Bandar Seri Begawan", country: "Brunei", code: "BWN", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Doha", country: "Qatar", code: "DOH", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Cairo", country: "Egypt", code: "CAI", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Algiers", country: "Algeria", code: "ALG", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Kuwait", country: "Kuwait", code: "KWI", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Tel Aviv", country: "Israel", code: "TLV", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Vientiane", country: "Laos", code: "VTE", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Muscat", country: "Oman", code: "MCT", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Auckland", country: "New Zealand", code: "AKL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Santiago", country: "Chile", code: "SCL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Vancouver", country: "Canada", code: "YVR", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Mexico City", country: "Mexico", code: "MEX", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Tehran", country: "Iran", code: "IKA", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Dubai", country: "United Arab Emirates", code: "DXB", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Beirut", country: "Lebanon", code: "BEY", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Baghdad", country: "Iraq", code: "BGW", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Nashville", country: "United States", code: "BNA", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Melbourne", country: "Australia", code: "MEL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Gold Coast", country: "Australia", code: "OOL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Shenzhen", country: "Shenzhen", code: "SZX", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Hyderabad", country: "India", code: "HYD", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Male", country: "Maldives", code: "MLE", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Seoul", country: "South Korea", code: "ICN", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Tashkent", country: "Uzbekistan", code: "TAS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Baku", country: "Azerbaijan", code: "GYD", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Dhaka", country: "Bangladesh", code: "DAC", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Sapporo", country: "Japan", code: "CTS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Kathmandu", country: "Nepal", code: "KTM", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Panama City", country: "Panama", code: "PTY", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Tbilisi", country: "Georgia", code: "TBS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Lahore", country: "Pakistan", code: "LHE", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Colombo", country: "Sri Lanka", code: "CMB", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Vladivostok", country: "Russia", code: "VVO", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Warsaw", country: "Poland", code: "WAW", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Helsinki", country: "Finland", code: "HEL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Vienna", country: "Austria", code: "VIE", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Madrid", country: "Spain", code: "MAD", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Lisbon", country: "Portugal", code: "LIS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Tallinn", country: "Estonia", code: "TLL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Stockholm", country: "Sweden", code: "ARN", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Copenhagen", country: "Denmark", code: "CPH", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Zanzibar", country: "Tanzania", code: "ZNZ", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Lagos", country: "Nigeria", code: "LOS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Khartoum", country: "Sudan", code: "KRT", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Mahe Island", country: "Seychelles", code: "SEZ", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Cape Town", country: "South Africa", code: "CPT", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Belgrade", country: "Serbia", code: "BEG", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Milan", country: "Italy", code: "MXP", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Budapest", country: "Hungary", code: "BUD", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Zagreb", country: "Croatia", code: "ZAG", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Athens", country: "Greece", code: "ATH", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Dublin", country: "Ireland", code: "DUB", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Amsterdam", country: "Netherlands", code: "AMS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Oslo", country: "Norway", code: "OSL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Brussels", country: "Belgium", code: "BRU", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Basel", country: "Switzerland", code: "BSL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Kyiv", country: "Ukraine", code: "KBP", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Newcastle", country: "United Kingdom", code: "NCL", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Minsk", country: "Minsk", code: "MSQ", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Prague", country: "Czech Republic", code: "PRG", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Dusseldorf", country: "Germany", code: "DUS", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "Bangui", country: "Central African Republic", code: "BGF", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
  #  Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"", image: "")
   #
# ==================================================EUROPE===================================================================
Airport.create!(name: "Moscow", country: "Russia", code: "MOW", lat: "55.7558", lng: "37.6173", continent:"europe", image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQuau6kZUlxiUODiUJBq4CQh1ixCeSajK0uhL6j-Bce9KTRa3Cl")
Airport.create!(name: "Catania Fontanarossa", country: "Italy", code: "CTA", lat: "37.466781", lng: "15.0664", continent:"europe", image: "")
Airport.create!(name: "Paris", country: "France", code: "PAR", lat: "49.012779", lng: "2.55", continent:"europe", image: "")
Airport.create!(name: "Tenerife", country: "Spain", code: "TCI", lat: "28.044475", lng: "-16.572489", continent:"europe", image: "")
Airport.create!(name: "Amsterdam ", country: "Netherlands", code: "AMS", lat: "52.308613", lng: "4.763889", continent:"europe", image: "http://www.westcordhotels.nl/wp-content/uploads/2015/09/xarrangement-iamsterdam-hotels-amsterdam.jpg.pagespeed.ic.d6bQTc_H45.jpg")
Airport.create!(name: "Toulouse ", country: "France", code: "TLS", lat: "43.629075", lng: "1.363819", continent:"europe", image: "")
Airport.create!(name: "Madrid ", country: "Spain", code: "MAD", lat: "40.294139", lng: "-3.723833", continent:"europe", image: "")
Airport.create!(name: "Bergen ", country: "Norway", code: "BGO", lat: "60.293386", lng: "5.218142", continent:"europe", image: "")
Airport.create!(name: "Frankfurt ", country: "Germany", code: "FRA", lat: "50.026421", lng: "8.543125", continent:"europe", image: "")
Airport.create!(name: "Brussels ", country: "Belgium", code: "BRU", lat: "50.901389", lng: "4.484444", continent:"europe", image: "")
Airport.create!(name: "Barcelona ", country: "Spain", code: "BCN", lat: "41.297078", lng: "2.078464", continent:"europe", image: "")
Airport.create!(name: "Nice ", country: "France", code: "NCE", lat: "43.658411", lng: "7.215872", continent:"europe", image: "")
Airport.create!(name: "Oslo ", country: "Norway", code: "OSL", lat: "60.193917", lng: "11.100361", continent:"europe", image: "")
Airport.create!(name: "Trondheim ", country: "Norway", code: "TRD", lat: "63.457556", lng: "10.92425", continent:"europe", image: "")
Airport.create!(name: "Dublin ", country: "Ireland", code: "DUB", lat: "53.421333", lng: "-6.270075", continent:"europe", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Guinness.jpg/170px-Guinness.jpg")
Airport.create!(name: "Copenhagen ", country: "Denmark", code: "CPH", lat: "55.617917", lng: "12.655972", continent:"europe", image: "")
Airport.create!(name: "Malaga ", country: "Spain", code: "AGP", lat: "36.6749", lng: "-4.499106", continent:"europe", image: "")
Airport.create!(name: "Rome ", country: "Italy", code: "ROM", lat: "41.799361", lng: "12.594936", continent:"europe", image: "")
Airport.create!(name: "Cologne ", country: "Germany", code: "CGN", lat: "50.865917", lng: "7.142744", continent:"europe", image: "")
Airport.create!(name: "Munich ", country: "Germany", code: "MUC", lat: "48.353783", lng: "11.786086", continent:"europe", image: "")
Airport.create!(name: "Palermo ", country: "Italy", code: "PMO", lat: "38.175958", lng: "13.091019", continent:"europe", image: "")
Airport.create!(name: "Milan ", country: "Italy", code: "MIL", lat: "45.542222", lng: "9.203333", continent:"europe", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRLV6d7VFIn6IhvpfJSkcIKfHvPP1jLTQAgk2UVsVMADTnPtgSl")
Airport.create!(name: "Stuttgart ", country: "Germany", code: "STR", lat: "48.689878", lng: "9.221964", continent:"europe", image: "")
Airport.create!(name: "St Petersburg Pulkovo ", country: "Russia", code: "LED", lat: "59.800292", lng: "30.262503", continent:"europe", image: "")
Airport.create!(name: "Lisbon ", country: "Portugal", code: "LIS", lat: "38.781311", lng: "-9.135919", continent:"europe", image: "")
Airport.create!(name: "Palma - Majorca ", country: "Spain", code: "PMI", lat: "39.55361", lng: "2.727778", continent:"europe", image: "")
Airport.create!(name: "Ibiza ", country: "Spain", code: "IBZ", lat: "38.872858", lng: "1.373117", continent:"europe", image: "https://s-media-cache-ak0.pinimg.com/originals/5a/d3/6d/5ad36d82387f5912d5382299586f1108.jpg")
Airport.create!(name: "Zurich ", country: "Switzerland", code: "ZRH", lat: "47.464722", lng: "8.549167", continent:"europe", image: "")
Airport.create!(name: "Marseille ", country: "France", code: "MRS", lat: "43.435555", lng: "5.213611", continent:"europe", image: "")
Airport.create!(name: "Alicante ", country: "Spain", code: "ALC", lat: "38.282169", lng: "-0.558156", continent:"europe", image: "")
Airport.create!(name: "Lyon ", country: "France", code: "LYS", lat: "45.726387", lng: "5.090833", continent:"europe", image: "")
Airport.create!(name: "Berlin ", country: "Germany", code: "BER", lat: "52.380001", lng: "13.5225", continent:"europe", image: "")
Airport.create!(name: "Naples ", country: "Italy", code: "NAP", lat: "40.886033", lng: "14.290781", continent:"europe", image: "")
Airport.create!(name: "Stockholm ", country: "Sweden", code: "STO", lat: "59.418694", lng: "17.890694", continent:"europe", image: "https://scontent.xx.fbcdn.net/v/t1.0-9/10422121_10203919102647142_1659758921460479671_n.jpg?oh=a399d33c050ddd7dd7f326402fc9755e&oe=5997E159")
Airport.create!(name: "Stavanger ", country: "Norway", code: "SVG", lat: "58.876778", lng: "5.637856", continent:"europe", image: "")
Airport.create!(name: "Athens", country: "Greece", code: "ATH", lat: "37.936358", lng: "23.944467", continent:"europe", image: "https://media-cdn.tripadvisor.com/media/photo-s/06/cf/1e/cf/acropolis-akropolis.jpg")
Airport.create!(name: "Bordeaux ", country: "France", code: "BOD", lat: "44.828335", lng: "-0.715556", continent:"europe", image: "") #double check before for negetive numbers
Airport.create!(name: "Faro ", country: "Sweden", code: "FAO", lat: "37.014425", lng: "-7.965911", continent:"europe", image: "")
Airport.create!(name: "Geneva ", country: "Switzerland", code: "GVA", lat: "46.238064", lng: "6.10895", continent:"europe", image: "https://www.geneve.com/fileadmin/_processed_/csm_onu-nations-united-geneva-2_c_www.geneve.com_600x600_03d4b37662.jpg")
Airport.create!(name: "Vienna ", country: "Austria", code: "VIE", lat: "48.110278", lng: "16.569722", continent:"europe", image: "")
Airport.create!(name: "Helsinki Vantaa ", country: "Finland", code: "HEL", lat: "60.317222", lng: "24.963333", continent:"europe", image: "")
Airport.create!(name: "Hamburg ", country: "Germany", code: "HAM", lat: "53.630389", lng: "9.988228", continent:"europe", image: "")
Airport.create!(name: "Cagliari ", country: "Italy", code: "CAG", lat: "39.251469", lng: "9.054283", continent:"europe", image: "")
Airport.create!(name: "Dusseldorf ", country: "Germany", code: "DUS", lat: "51.289453", lng: "6.766775", continent:"europe", image: "")

#NOT DIRECT TO UK
Airport.create!(name: "Simferopol", country: "Ukraine", code: "SIP", lat: "45.052222", lng: "33.975139", continent:"europe", image: "")
Airport.create!(name: "Ercan", country: "Cyprus", code: "ECN", lat: "35.1547", lng: "33.4961", continent:"europe", image: "")
Airport.create!(name: "Sochi", country: "Russia", code: "AER", lat: "43.449928", lng: "39.956589", continent:"europe", image: "")
Airport.create!(name: "Ekaterinburg ", country: "Russia", code: "SVX", lat: "56.743108", lng: "60.802728", continent:"europe", image: "")
Airport.create!(name: "Novosibirsk ", country: "Russia", code: "OVB", lat: "55.012622", lng: "82.650656", continent:"europe", image: "")

#================================AFRICA=================================================
Airport.create!(name: "Johannesburg ", country: "South Africa", code: "JNB", lat: "-25.986267", lng: "28.140061", continent:"Africa", image: "https://s-media-cache-ak0.pinimg.com/originals/55/1a/68/551a68db7929d438d80cc138c3963d09.jpg")
Airport.create!(name: "Marrakech Menara ", country: "Morocco", code: "RAK", lat: "31.606886", lng: "-8.0363", continent:"Africa", image: "")
Airport.create!(name: "Cape Town ", country: "South Africa", code: "CPT", lat: "-33.964806", lng: "18.601667", continent:"Africa", image: "")
Airport.create!(name: "Addis Ababa ", country: "Ethiopia", code: "ADD", lat: "8.977889", lng: "38.799319", continent:"Africa", image: "")
Airport.create!(name: "Cairo ", country: "Egypt", code: "CAI", lat: "30.121944", lng: "31.405556", continent:"Africa", image: "https://s-media-cache-ak0.pinimg.com/736x/36/8c/25/368c25832ae95edf669d05ea1f20f953.jpg")
Airport.create!(name: "Luanda ", country: "Angola", code: "LAD", lat: "-8.858375", lng: "13.231178", continent:"Africa", image: "")
Airport.create!(name: "Lagos ", country: "Nigeria", code: "LOS", lat: "6.577369", lng: "3.321156", continent:"Africa", image: "")
Airport.create!(name: "Hurghada ", country: "Egypt", code: "HRG", lat: "27.178317", lng: "33.799436", continent:"Africa", image: "")
Airport.create!(name: "Abuja ", country: "Nigeria", code: "ABV", lat: "9.006792", lng: "7.263172", continent:"Africa", image: "")
Airport.create!(name: "Accra ", country: "Ghana", code: "ACC", lat: "5.605186", lng: "-0.166786", continent:"Africa", image: "")
Airport.create!(name: "Nairobi ", country: "Kenya", code: "NBO", lat: "-1.319167", lng: "36.9275", continent:"Africa", image: "")
Airport.create!(name: "Saint-Denis ", country: "", code: "RUN", lat: "-20.8871", lng: "55.510308", continent:"Africa", image: "")
Airport.create!(name: "Algiers ", country: "Algeria", code: "ALG", lat: "36.691014", lng: "3.215408", continent:"Africa", image: "")
Airport.create!(name: "Sharm El Sheikh ", country: "Egypt", code: "SSH", lat: "27.977286", lng: "34.39495", continent:"Africa", image: "")
Airport.create!(name: "Port Elizabeth ", country: "South Africa", code: "PLZ", lat: "-33.984919", lng: "25.617275", continent:"Africa", image: "")
Airport.create!(name: "Mauritius ", country: "Mauritius", code: "MRU", lat: "-20.430235", lng: "57.6836", continent:"Africa", image: "")
Airport.create!(name: "Casablanca Mohamed V. ", country: "Morocco", code: "CMN", lat: "33.367467", lng: "-7.589967", continent:"Africa", image: "")
Airport.create!(name: "Rabat ", country: "Morocco", code: "RBA", lat: "34.051467", lng: "-6.751519", continent:"Africa", image: "")
Airport.create!(name: "Alexandria ", country: "Egypt", code: "ALY", lat: "31.183903", lng: "29.948889", continent:"Africa", image: "")
Airport.create!(name: "Fes-Saiss ", country: "Morocco", code: "FEZ", lat: "33.927261", lng: "-4.977958", continent:"Africa", image: "")
Airport.create!(name: "Tunis Carthage ", country: "Tunisia", code: "TUN", lat: "36.851033", lng: "10.227217", continent:"Africa", image: "")


Airport.create!(name: "Durban King Shaka International ", country: "Durban", code: "DUR", lat: "-29.970089", lng: "30.950519", continent:"Africa", image: "")
Airport.create!(name: "Maputo ", country: "Mozambique", code: "MPM", lat: "-25.920836", lng: "32.572606", continent:"Africa", image: "")
Airport.create!(name: "Dar Es Salaam ", country: "Tanzania", code: "DAR", lat: "-6.878111", lng: "39.202625", continent:"Africa", image: "")
Airport.create!(name: "Praslin Island ", country: "Seychelles", code: "PRI", lat: "-4.319292", lng: "55.691417", continent:"Africa", image: "")
Airport.create!(name: "Khartoum ", country: "Sudan", code: "KRT", lat: "15.589497", lng: "32.553161", continent:"Africa", image: "")
Airport.create!(name: "Mahe Island ", country: "Seychelles", code: "SEZ", lat: "4.674342", lng: "55.521839", continent:"Africa", image: "")
Airport.create!(name: "Port Harcourt ", country: "Nigeria", code: "PHC", lat: "5.015494", lng: "6.949594", continent:"Africa", image: "")
Airport.create!(name: "Gaborone ", country: "Botswana", code: "GBE", lat: "-24.555225", lng: "25.918208", continent:"Africa", image: "")
Airport.create!(name: "Mombasa ", country: "Kenya", code: "MBA", lat: "-4.034833", lng: "39.59425", continent:"Africa", image: "")
Airport.create!(name: "Mwanza ", country: "Tanzania", code: "MWZ", lat: "-2.444486", lng: "32.932667", continent:"Africa", image: "")
Airport.create!(name: "East London ", country: "South Africa", code: "ELS", lat: "-33.035569", lng: "27.825939", continent:"Africa", image: "")
Airport.create!(name: "Praia ", country: "Cape Verde", code: "RAI", lat: "14.9245", lng: "-23.4935", continent:"Africa", image: "")
Airport.create!(name: "Zanzibar ", country: "Tanzania", code: "ZNZ", lat: "-6.222025", lng: "39.224886", continent:"Africa", image: "")
Airport.create!(name: "Constantine ", country: "Algeria", code: "CZL", lat: "36.276028", lng: "6.620386", continent:"Africa", image: "")
Airport.create!(name: "Ben Bella Airport ", country: "Algeria", code: "ORN", lat: "35.623858", lng: "-0.621183", continent:"Africa", image: "")
Airport.create!(name: "Owerri ", country: "Nigeria", code: "QOW", lat: "5.42706", lng: "7.20603", continent:"Africa", image: "")
Airport.create!(name: "Windhoek ", country: "Namibia", code: "WDH", lat: "-22.486667", lng: "17.4625", continent:"Africa", image: "")
Airport.create!(name: "Abidjan ", country: "Cote d'Ivoire", code: "ABJ", lat: "5.261386", lng: "-3.926294", continent:"Africa", image: "")
Airport.create!(name: "Harare ", country: "Zimbabwe", code: "HRE", lat: "-17.931806", lng: "31.092847", continent:"Africa", image: "")
Airport.create!(name: "Entebbe ", country: "Uganda", code: "EBB", lat: "0.042386", lng: "32.443503", continent:"Africa", image: "")
Airport.create!(name: "Mara Lodges ", country: "Kenya", code: "MRE", lat: "-1.406111", lng: "35.008056", continent:"Africa", image: "")
Airport.create!(name: "Pointe Noire ", country: "Congo (Brazzaville)", code: "PNR", lat: "-4.816028", lng: "11.886597", continent:"Africa", image: "")
Airport.create!(name: "George ", country: "South Africa", code: "GRJ", lat: "-34.005553", lng: "22.378889", continent:"Africa", image: "")
Airport.create!(name: "Kilimanjaro ", country: "Tanzania", code: "JRO", lat: "-3.429406", lng: "37.074461", continent:"Africa", image: "")
Airport.create!(name: "Bloemfontein ", country: "South Africa", code: "BFN", lat: "-29.092722", lng: "26.302444", continent:"Africa", image: "")
Airport.create!(name: "Aswan Daraw ", country: "Egypt", code: "ASW", lat: "23.964356", lng: "32.819975", continent:"Africa", image: "")
Airport.create!(name: "Lake Manyara ", country: "Tanzania", code: "LKY", lat: "-3.376306", lng: "35.818278", continent:"Africa", image: "")
Airport.create!(name: "Brazzaville ", country: "Congo (Kinshasa)", code: "BZV", lat: "-4.2517", lng: "15.253031", continent:"Africa", image: "")
Airport.create!(name: "Seronera ", country: "Kenya", code: "SEU", lat: "-2.458056", lng: "34.8225", continent:"Africa", image: "")

# #================================Arctic Region (Europe) =================================
# Airport.create!(name: "Reykjavik ", country: "", code: "REK", lat: "", lng: "", continent:"Artic", image: "")
# #
# Airport.create!(name: "Akureyri ", country: "", code: "AEY", lat: "", lng: "", continent:"Artic", image: "")
# Airport.create!(name: "Husavik ", country: "", code: "HZK", lat: "", lng: "", continent:"Artic", image: "")
# Airport.create!(name: "Egilsstadir ", country: "", code: "EGS", lat: "", lng: "", continent:"Artic", image: "")
# Airport.create!(name: "Vestmannaeyjar ", country: "", code: "VEY", lat: "", lng: "", continent:"Artic", image: "")
# Airport.create!(name: "Isafjordur ", country: "", code: "IFJ", lat: "", lng: "", continent:"Artic", image: "")
#
# #========================Airports in Arctic Region (North America) - most popular================
# #not direct flights from uk
# Airport.create!(name: "Kangerlussuaq ", country: "", code: "", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Neerlerit Inaat ", country: "CNP", code: "", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Nuuk ", country: "", code: "GOH", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Narsarsuaq ", country: "", code: "UAK", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Ilulissat ", country: "", code: "JAV", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Sisimiut ", country: "", code: "JHS", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Kulusuk Island ", country: "", code: "KUS", lat: "", lng: "", continent:"North America Artic", image: "")
# Airport.create!(name: "Aasiaat ", country: "", code: "JEG", lat: "", lng: "", continent:"North America Artic", image: "")
#
# #==================================ASIA=============================
Airport.create!(name: "Shanghai ", country: "China", code: "SHA", lat: "31.197875", lng: "121.336319", continent:"Asia", image: "http://cdn.pcwallart.com/images/shanghai-street-view-wallpaper-3.jpg")
Airport.create!(name: "Osaka ", country: "Japan", code: "OSA", lat: "34.738932", lng: "135.500093", continent:"Asia", image: "https://gaijinpot.scdn3.secure.raxcdn.com/wp-content/uploads/sites/6/2016/02/Osaka.jpg")
Airport.create!(name: "Beijing ", country: "China", code: "BJS", lat: "39.7825", lng: "116.387778", continent:"Asia", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Birds_Nest_at_Night.jpg/360px-Birds_Nest_at_Night.jpg")
Airport.create!(name: "Sapporo ", country: "Japan", code: "SPK", lat: "43.1161", lng: "141.38", continent:"Asia", image: "http://www.skiworld.co.uk/images/uploads/photos/large/otbt-resorts-japan-niseko-view-volcano-chairlift_1756.jpg")
Airport.create!(name: "Guangzhou ", country: "China", code: "CAN", lat: "23.392436", lng: "113.298786", continent:"Asia", image: "")
Airport.create!(name: "Kolkata ", country: "Palau", code: "CCU", lat: "6.998333", lng: "134.232778", continent:"Asia", image: "")
Airport.create!(name: "Tokyo ", country: "Japan", code: "TYO", lat: "35.552258", lng: "139.779694", continent:"Asia", image: "https://s-media-cache-ak0.pinimg.com/736x/76/47/9d/76479dd91dc55c2768ddccfc30a4fbf5.jpg")
Airport.create!(name: "Fukuoka ", country: "Japan", code: "FUK", lat: "33.585942", lng: "130.450686", continent:"Asia", image: "")
Airport.create!(name: "Chengdu ", country: "China", code: "CTU", lat: "30.578528", lng: "103.947086", continent:"Asia", image: "")
Airport.create!(name: "Hyderabad ", country: "Pakistan", code: "HYD", lat: "25.3181", lng: "68.3661", continent:"Asia", image: "")
Airport.create!(name: "New Delhi ", country: "India", code: "DEL", lat: "28.5665", lng: "77.103088", continent:"Asia", image: "")
Airport.create!(name: "Okinawa ", country: "Japan", code: "OKA", lat: "26.195814", lng: "127.645869", continent:"Asia", image: "")
Airport.create!(name: "Chongqing ", country: "China", code: "CKG", lat: "29.719217", lng: "106.641678", continent:"Asia", image: "")
Airport.create!(name: "Chennai ", country: "India", code: "MAA", lat: "12.994414", lng: "80.180517", continent:"Asia", image: "")
Airport.create!(name: "Mumbai ", country: "India", code: "BOM", lat: "19.088686", lng: "72.867919", continent:"Asia", image: "")
Airport.create!(name: "Seoul ", country: "South Korea", code: "SEL", lat: "37.558311", lng: "126.790586", continent:"Asia", image: "")
Airport.create!(name: "Bengaluru ", country: "India", code: "BLR", lat: "12.949986", lng: "77.668206", continent:"Asia", image: "")

# #Not direct flights
# Airport.create!(name: "Kunming ", country: "", code: "KMG", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Sanya ", country: "", code: "SYX", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Shenzhen Bao'an International ", country: "", code: "SZX", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Fuzhou ", country: "", code: "FOC", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Xi An Xianyang ", country: "", code: "XIY", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Nanning ", country: "", code: "NNG", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Hangzhou ", country: "", code: "HGH", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Lanzhou ", country: "", code: "LHW", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Urumqi ", country: "", code: "URC", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Jinan Yaoqiang ", country: "", code: "TNA", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Xiamen ", country: "", code: "XMN", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Taiyuan ", country: "", code: "TYN", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Nanking / Nanjing ", country: "", code: "NKG", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Changchun ", country: "", code: "CGQ", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Wuhan ", country: "", code: "WUH", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Hohhot ", country: "", code: "HET", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Zhengzhou ", country: "", code: "CGO", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Jeju ", country: "", code: "CJU", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Qingdao ", country: "", code: "TAO", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Zhuhai ", country: "", code: "ZUH", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Changsha ", country: "", code: "CSX", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Yinchuan ", country: "", code: "INC", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Harbin ", country: "", code: "HRB", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Wenzhou ", country: "", code: "WNZ", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Haikou ", country: "", code: "HAK", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Hefei ", country: "", code: "HFE", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Dalian ", country: "", code: "DLC", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Nanchang ", country: "", code: "KHN", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Tianjin ", country: "", code: "TSN", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Ningbo ", country: "", code: "NGB", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Guiyang ", country: "", code: "KWE", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Guilin  ", country: "", code: "KWL", lat: "", lng: "", continent:"Asia", image: "")
# Airport.create!(name: "Shenyang ", country: "", code: "SHE", lat: "", lng: "", continent:"Asia", image: "")
#
# #===============Airports in Central America and the Caribbean - most popular============
# #with direct flights from uk
# Airport.create!(name: "San Juan", country: "Puerto Rico", code: "SJU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Bridgetown ", country: "", code: "BGI", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Punta Cana ", country: "", code: "PUJ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Tobago ", country: "", code: "TAB", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Montego Bay", country: "", code: "MBJ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Saint John's ", country: "", code: "ANU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "San Jose ", country: "Costa Rica", code: "SJO", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "St Croix Island ", country: "", code: "STX", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Nassau International ", country: "", code: "NAS", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Varadero ", country: "", code: "VRA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Havana ", country: "Cuba", code: "HAV", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "St. George ", country: "", code: "GND", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Saint Thomas Cyril E King ", country: "", code: "STT", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Basseterre", country: "", code: "SKB", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Kingston ", country: "Jamaica", code: "KIN", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Cayo Coco ", country: "", code: "CCC", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Castries ", country: "", code: "SLU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
#
# #Airports not with direct flights
# Airport.create!(name: "Panama City ", country: "Panama", code: "PTY", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Pointe-a-Pitre", country: "", code: "PTP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Oranjestad ", country: "", code: "AUA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Fort De France ", country: "", code: "FDF", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Guatemala City ", country: "", code: "GUA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "San Pedro", country: "Belize", code: "SPR", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Santo Domingo ", country: "Dominican Republic", code: "SDQ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Curacao ", country: "", code: "CUR", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "San Salvador ", country: "El Salvador", code: "SAL", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Freeport ", country: "Bahamas", code: "FPO", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Managua ", country: "", code: "MGA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Puerto Plata ", country: "", code: "POP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "St Maarten ", country: "", code: "SXM", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Santa Clara ", country: "", code: "SNU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Grand Cayman Island ", country: "", code: "GCM", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Placencia", country: "", code: "PLJ", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Liberia ", country: "", code: "LIR", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Marsh Harbour ", country: "", code: "MHH", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Santiago ", country: "Dominican Republic", code: "STI", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Santiago ", country: "Cuba", code: "SCU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Providenciales ", country: "", code: "PLS", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "George Town ", country: "Bahamas", code: "GGT", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Belize City ", country: "", code: "BZE", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "St Martin Esperance ", country: "", code: "SFG", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Port Au Prince", country: "", code: "PAP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Roatan ", country: "", code: "RTB", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Port Of Spain ", country: "", code: "POS", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Ponce ", country: "", code: "PSE", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "San Pedro Sula ", country: "", code: "SAP", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Dangriga ", country: "", code: "DGA", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Tegucigalpa ", country: "", code: "TGU", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Caye Caulker ", country: "", code: "CUK", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
# Airport.create!(name: "Aguadilla ", country: "", code: "BQN", lat: "", lng: "", continent:"Central America and the Caribbean", image: "")
#
# #====================Airports in Middle East - most popular==============
# #with direct flights
# Airport.create!(name: "Istanbul ", country: "", code: "IST", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Muscat ", country: "", code: "MCT", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Riyadh ", country: "", code: "RUH", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Tel Aviv ", country: "", code: "TLV", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Dubai ", country: "", code: "DXB", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Bodrum ", country: "", code: "BJV", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Jeddah ", country: "", code: "JED", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Kuwait ", country: "", code: "KWI", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Tehran ", country: "", code: "THR", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Bahrain ", country: "", code: "BAH", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Izmir ", country: "", code: "ADB", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Dalaman ", country: "", code: "DLM", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Antalya ", country: "", code: "AYT", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Amman ", country: "", code: "AMM", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Abu Dhabi ", country: "", code: "AUH", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Beirut ", country: "", code: "BEY", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Hamad International ", country: "DOH", code: "", lat: "", lng: "", continent:"Middle East", image: "")
#
# #other airports
# Airport.create!(name: "Ankara Esenboga ", country: "", code: "ESB", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Van ", country: "", code: "VAN", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Dammam ", country: "", code: "DMM", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Ordu/Giresun ", country: "", code: "OGU", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Adana ", country: "", code: "ADA", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Erzurum ", country: "", code: "ERZ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Abha ", country: "", code: "AHB", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Taif ", country: "", code: "TIF", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Trabzon ", country: "", code: "TZX", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Antakya ", country: "", code: "HTY", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Mashhad ", country: "", code: "MHD", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Hail ", country: "", code: "HAS", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Sharjah ", country: "", code: "SHJ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Eilat ", country: "", code: "ETH", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Madinah ", country: "", code: "MED", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Elazig ", country: "", code: "EZS", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Jazan ", country: "", code: "GIZ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Gassim ", country: "", code: "ELQ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Kayseri ", country: "", code: "ASR", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Kish Island ", country: "", code: "KIH", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Gaziantep ", country: "", code: "GZT", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Erbil ", country: "", code: "EBL", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Shiraz ", country: "", code: "SYZ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Malatya  ", country: "", code: "MLX", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Ahwaz ", country: "", code: "AWZ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Tabriz ", country: "", code: "TBZ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Samsun Carsamba ", country: "", code: "SZF", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Isfahan ", country: "", code: "IFN", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Tabuk ", country: "", code: "TUU", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Denizli Cardak ", country: "", code: "DNZ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Konya ", country: "", code: "KYA", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Sanliurfa ", country: "", code: "SFQ", lat: "", lng: "", continent:"Middle East", image: "")
# Airport.create!(name: "Diyarbakir ", country: "", code: "DIY", lat: "", lng: "", continent:"Middle East", image: "")
#
# #=================Airports in North America - most popular=============
# #with direct flights
# Airport.create!(name: "New York ", country: "United States", code: "NYC", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "San Jose International ", country: "", code: "SJC", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Washington ", country: "United States", code: "WAS", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "St Louis ", country: "", code: "STL", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Chicago ", country: "", code: "CHI", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Raleigh / Durham ", country: "", code: "RDU", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Atlanta ", country: "", code: "ATL", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "New Orleans Louis Armstrong ", country: "", code: "MSY", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Los Angeles International ", country: "", code: "LAX", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Toronto ", country: "", code: "YTO", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Dallas ", country: "", code: "DFW", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Oakland Metropolitan Oak ", country: "", code: "OAK", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Denver International ", country: "", code: "DEN", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Austin-Bergstrom ", country: "", code: "AUS", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Las Vegas Mccarran ", country: "", code: "LAS", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Sacramento ", country: "", code: "SAC", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "San Francisco International ", country: "", code: "SFO", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Honolulu International ", country: "", code: "HNL", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Seattle ", country: "", code: "SEA", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Santa Ana John Wayne ", country: "", code: "SNA", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Miami ", country: "", code: "MIA", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Kansas City ", country: "MKC", code: "", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Phoenix", country: " ", code: "PHX", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Vancouver ", country: "", code: "", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Houston ", country: "", code: "HOU", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Pittsburgh Int'l Apt", country: "", code: "PIT", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Charlotte Douglas ", country: "", code: "CLT", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Indianapolis", country: "", code: "IND", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Orlando ", country: "", code: "ORL", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Cleveland ", country: "", code: "CLE", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Boston Logan International ", country: "", code: "BOS", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Columbus ", country: "", code: "CMH", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Minneapolis St Paul ", country: "", code: "MSP", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "San Antonio ", country: "", code: "SAT", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Detroit ", country: "", code: "DTT", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Cancun ", country: "", code: "CUN", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "San Diego ", country: "", code: "SAN", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Calgary ", country: "", code: "YYC", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Philadelphia ", country: "", code: "PHL", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Jacksonville International ", country: "", code: "JAX", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Portland ", country: "", code: "PDX", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Fort Myers ", country: "", code: "FMY", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Salt Lake City ", country: "", code: "SLC", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Hartford", country: "", code: "HFD", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Tampa International ", country: "", code: "TPA", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Milwaukee General Mitchell ", country: "", code: "MKE", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Mexico City Juarez International", country: "", code: "MEX", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Nashville ", country: "", code: "BNA", lat: "", lng: "", continent:"North America", image: "")
# Airport.create!(name: "Maui Kahului ", country: "", code: "OGG", lat: "", lng: "", continent:"North America", image: "")
#
# #Airports in Oceania - most popular
# #with direct flights to uk
# Airport.create!(name: "Sydney Kingsford Smith ", country: "", code: "SYD", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Nadi ", country: "", code: "NAN", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Melbourne ", country: "", code: "MEL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Dunedin ", country: "", code: "DUD", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Brisbane ", country: "", code: "BNE", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Napier-Hastings ", country: "", code: "NPE", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Auckland ", country: "", code: "AKL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Palmerston North", country: "", code: "PMR", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Adelaide ", country: "", code: "ADL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Papeete ", country: "", code: "PPT", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Wellington ", country: "", code: "WLG", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Noumea ", country: "", code: "NOU", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Christchurch ", country: "", code: "CHC", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "New Plymouth ", country: "", code: "NPL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Gold Coast ", country: "", code: "OOL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Blenheim ", country: "", code: "BHE", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Cairns ", country: "", code: "CNS", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Tauranga ", country: "", code: "TRG", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Nelson ", country: "", code: "NSN", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Hamilton ", country: "New Zealand", code: "HLZ", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Queenstown ", country: "New Zealand", code: "ZQN", lat: "", lng: "", continent:"Oceania", image: "")
#
# #other airports
# Airport.create!(name: "Perth ", country: "", code: "PER", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Saipan ", country: "", code: "SPN", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Canberra ", country: "", code: "CBR", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Hamilton Island ", country: "", code: "HTI", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Darwin ", country: "", code: "DRW", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Great Barrier Island ", country: "", code: "GBZ", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Hobart ", country: "", code: "HBA", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Townsville ", country: "", code: "TSV", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Port Moresby ", country: "", code: "POM", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Coffs Harbour ", country: "", code: "CFS", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Newcastle Williamtown ", country: "", code: "NTL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Newman ", country: "", code: "ZNE", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Guam A.B. Won Pat ", country: "", code: "GUM", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Lae ", country: "", code: "LAE", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Launceston ", country: "", code: "LST", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Rabaul ", country: "", code: "RAB", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Mackay ", country: "", code: "MKY", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Gladstone ", country: "", code: "GLT", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Sunshine Coast ", country: "", code: "MCY", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Albury ", country: "", code: "ABX", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Alice Springs ", country: "", code: "ASP", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Ballina ", country: "", code: "BNK", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Karratha ", country: "", code: "KTA", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Mildura ", country: "", code: "MQL", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Horn Island ", country: "", code: "HID", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Tamworth ", country: "", code: "TMW", lat: "", lng: "", continent:"Oceania", image: "")
# Airport.create!(name: "Rockhampton ", country: "", code: "ROK", lat: "", lng: "", continent:"Oceania", image: "")
#
# #Airports in South America - most popular
# #with direct flights
# Airport.create!(name: "Sao Paulo ", country: "", code: "SAO", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Lima ", country: "", code: "LIM", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Rio De Janeiro ", country: "", code: "RIO", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Buenos Aires ", country: "", code: "BUE", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Bogota ", country: "", code: "BOG", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Santiago Arturo Merino Benitez ", country: "", code: "SCL", lat: "", lng: "", continent:"South America", image: "")
#
# #other airports
# Airport.create!(name: "Brasilia ", country: "", code: "BSB", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Cordoba ", country: "", code: "COR", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Belo Horizonte ", country: "", code: "BHZ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Iguassu Falls ", country: "", code: "IGU", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Sao Paulo Viracopos ", country: "", code: "VCP", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Natal ", country: "", code: "NAT", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Porto Alegre ", country: "", code: "POA", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Bucaramanga ", country: "", code: "BGA", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Curitiba ", country: "", code: "CWB", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Navegantes ", country: "", code: "NVT", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Medellin ", country: "", code: "MDE", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Sao Luiz ", country: "", code: "SLZ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Salvador ", country: "", code: "SSA", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Campo Grande ", country: "", code: "CGR", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Recife ", country: "", code: "REC", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Antofagasta ", country: "", code: "ANF", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Fortaleza ", country: "", code: "FOR", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Maceio ", country: "", code: "MCZ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Cali ", country: "", code: "CLO", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Santa Marta ", country: "", code: "SMR", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Cuzco ", country: "", code: "CUZ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Pereira ", country: "", code: "PEI", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Florianopolis ", country: "", code: "FLN", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Ribeirao Preto ", country: "", code: "RAO", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Goiania ", country: "", code: "GYN", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Arequipa ", country: "", code: "AQP", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Cartagena ", country: "", code: "CTG", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Joao Pessoa ", country: "", code: "JPA", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Vitoria ", country: "", code: "VIX", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Uberlandia ", country: "", code: "UDI", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Caracas ", country: "", code: "CCS", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Mendoza ", country: "", code: "MDZ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Belem ", country: "", code: "BEL", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "La Paz ", country: "", code: "LPB", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Cuiaba ", country: "", code: "CGB", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Santa Cruz ", country: "", code: "SRZ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Quito ", country: "", code: "UIO", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Calama ", country: "", code: "CJC", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Manaus ", country: "", code: "MAO", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Puerto Montt ", country: "", code: "PMC", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Barranquilla ", country: "", code: "BAQ", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Cucuta ", country: "", code: "CUC", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Guayaquil ", country: "", code: "GYE", lat: "", lng: "", continent:"South America", image: "")
# Airport.create!(name: "Aracaju ", country: "", code: "AJU", lat: "", lng: "", continent:"South America", image: "")
#
# #Airports in Southeast Asia - most popular
# #With direct flights from United Kingdom
Airport.create!(name: "Jakarta ", country: "", code: "JKT", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Bangkok ", country: "Thailand", code: "BKK", lat: "13.681108", lng: "100.747283", continent:"Southeast Asia", image: "http://www.yourworldyourhome.com/wp-content/uploads/2014/02/ping-pong-girl-thailand-show.jpg")
Airport.create!(name: "Bali (Denpasar) ", country: "Indonesia", code: "DPS", lat: "-8.748169", lng: "115.167172", continent:"Southeast Asia", image: "http://www.indonesia.travel/uploads/a37a09cdd25bacdbd20c2d45dbd367fac48210bf-e729f.jpg")
Airport.create!(name: "Ho Chi Minh City ", country: "", code: "SGN", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Taipei ", country: "", code: "TPE", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Manila Ninoy Aquino ", country: "", code: "MNL", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Mactan-Cebu International ", country: "", code: "CEB", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Surabaya ", country: "", code: "SUB", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Macau ", country: "", code: "MFM", lat: "", lng: "", continent:"Southeast Asia", image: "")
Airport.create!(name: "Hanoi ", country: "", code: "HAN", lat: "", lng: "", continent:"Southeast Asia", image: "http://www.shoreexcursions.asia/wp-content/uploads/2014/12/Halong-Bay-Cruise-and-Hanoi-Capital-%E2%80%93-2-Days.jpg")

# #other airports
# Airport.create!(name: "Makassar ", country: "", code: "UPG", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Lombok International ", country: "", code: "LOP", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Medan ", country: "", code: "MES", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Davao International ", country: "", code: "DVO", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Phuket ", country: "", code: "HKT", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Solo / Surakarta ", country: "", code: "SOC", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Balikpapan ", country: "", code: "BPN", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Manado ", country: "", code: "MDC", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Da Nang ", country: "", code: "DAD", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Nha Trang Cam Ranh", country: "", code: "CXR", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Chiang Mai ", country: "", code: "CNX", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Bandar Lampung ", country: "", code: "TKG", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Yogyakarta ", country: "", code: "JOG", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Johor Bahru ", country: "", code: "JHB", lat: "", lng: "", continent:"Southeast Asia", image: "")
#
# Airport.create!(name: "Batam ", country: "", code: "BTH", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Phu Quoc ", country: "", code: "PQC", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Kota Kinabalu ", country: "", code: "BKI", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Langkawi ", country: "", code: "LGK", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Palembang ", country: "", code: "PLM", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Pangkalpinang ", country: "", code: "PGK", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Pontianak ", country: "", code: "PNK", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Bandung ", country: "", code: "BDO", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Kuching ", country: "Malaysia", code: "KCH", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Koh Samui / Samui Island ", country: "", code: "USM", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Penang", country: "Malaysia", code: "PEN", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Kota Bharu ", country: "", code: "KBR", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Padang ", country: "", code: "PDG", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Miri ", country: "", code: "MYY", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Semarang ", country: "", code: "SRG", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Kupang ", country: "", code: "KOE", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Jayapura ", country: "", code: "DJJ", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Krabi ", country: "", code: "KBV", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Banjarmasin ", country: "", code: "BDJ", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Tarakan ", country: "", code: "TRK", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Hat Yai ", country: "", code: "HDY", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Jambi ", country: "", code: "DJB", lat: "", lng: "", continent:"Southeast Asia", image: "")
# Airport.create!(name: "Pekanbaru ", country: "", code: "PKU", lat: "", lng: "", continent:"Southeast Asia", image: "")
#
#
#
#
#
#
#
#
#
#
#
#
#    Airport.create!(name: "", country: "", code: "", lat: "", lng: "", continent:"Africa", image: "")

#==============TRIPS ===================================================

test1 = Trip.create!(
  name: "testParis",
  description: "shopping trip",
  user: hannah,
  attendees: [],
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

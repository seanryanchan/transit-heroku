# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# License
# This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
# of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2015-2016

# Code History
# 1.0 - 2/5/2019 - Sean Chan - Initial File and 3 data points for each table

# List of Commuters
Commuter.create(name: "Sean", email: "sean@gmail.com", password: "password")
Commuter.create(name: "Menard", email: "mmcruz@gmail.com", password: "password")
Commuter.create(name: "Michael", email: "mio@gmail.com", password: "password")
Commuter.create(name: "User", email: "user@email.com", password: "password")

# List of Favorites
seans_route = Favorite.create(name: "Sean's Route to Pagudpud", commuter_id: 1)
menards_route = Favorite.create(name: "Menard's Route to Naga", commuter_id: 2)
Favorite.create(name: "Mio's Route to Pangasinan", commuter_id: 3)

# List of Transit Lines
f = TransitLine.create(name: "Five Star", kind: "Bus", status: "Full Operation", restrictions: "No food",
  avg_price: 20.00, operating_hours: "24/7", reliability: "8.0", start_time: "12AM", close_time: "12AM")
m = TransitLine.create(name: "MRT-3", kind: "Train", status: "Full Operation", restrictions: "No food and drinks",
   avg_price: 30.00, operating_hours: "7AM - 11PM", reliability: "7.0", start_time: "7AM", close_time: "11PM")
g = TransitLine.create(name: "Green Liner", kind: "Bus", status: "Full Operation", restrictions: "None",
   avg_price: 25.00, operating_hours: "7AM - 11PM", reliability: "9.0", start_time: "7AM", close_time: "11PM")
v = TransitLine.create(name: "Victory Liner", kind: "Bus", status: "Full Operation", restrictions: "None",
  avg_price: 25.00, operating_hours: "7AM - 11PM", reliability: "9.0", start_time: "7AM", close_time: "11PM")

p2pTCMakati = TransitLine.create(name: "P2P Bus UPTC - Makati", kind: "Bus (P2P)", status: "Full Operation", restrictions: "None",
  avg_price: 30.00, operating_hours: "7AM - 11PM", reliability: "10.0", start_time: "7AM", close_time: "11PM")


ikot = TransitLine.create(name: "Ikot Jeep", kind: "Jeep", status: "Full Operation", restrictions: "None",
  avg_price: 8, operating_hours: "6AM - 11PM", reliability: "9.0", start_time: "6AM", close_time: "11PM")

katip = TransitLine.create(name: "UP - Katipunan Jeep", kind: "Jeep", status: "Full Operation", restrictions: "None",
  avg_price: 11, operating_hours: "8AM - 7PM", reliability: "9.0", start_time: "6AM", close_time: "11PM")

upSMNorthEdsa = TransitLine.create(name: "UP - SM North EDSA Jeep", kind: "Jeep", status: "Full Operation", restrictions: "None",
  avg_price: 13, operating_hours: "5AM - 7PM", reliability: "9.0", start_time: "5AM", close_time: "11PM")

palM_LG = TransitLine.create(name: "Philippine Airlines Manila - Legazpi", kind: "Airplane", status: "Full Operation", restrictions: "None",
  avg_price: 3500, operating_hours: "5AM - 12AM", reliability: "9.0", start_time: "5AM", close_time: "12AM")

cebM_LG = TransitLine.create(name: "Cebu Pacific Manila - Legazpi", kind: "Airplane", status: "Full Operation", restrictions: "None",
  avg_price: 2500, operating_hours: "5AM - 12AM", reliability: "9.0", start_time: "5AM", close_time: "12AM")

palM_LAO = TransitLine.create(name: "Philippine Airlines Manila - Laoag", kind: "Airplane", status: "Full Operation", restrictions: "None",
  avg_price: 4500, operating_hours: "11AM - 10PM", reliability: "9.0", start_time: "11AM", close_time: "10PM")

aaM_ILO = TransitLine.create(name: "Air Asia Manila - Iloilo", kind: "Airplane", status: "Full Operation", restrictions: "None",
  avg_price: 1500, operating_hours: "5AM - 12AM", reliability: "9.0", start_time: "5AM", close_time: "12AM")

cebM_GES = TransitLine.create(name: "Cebu Pacific Manila - General Santos", kind: "Airplane", status: "Full Operation", restrictions: "None",
  avg_price: 4000, operating_hours: "5AM - 12AM", reliability: "9.0", start_time: "5AM", close_time: "12AM")

cebM_ZAM = TransitLine.create(name: "Cebu Pacific Manila - Zamboanga", kind: "Airplane", status: "Full Operation", restrictions: "None",
  avg_price: 4000, operating_hours: "5AM - 12AM", reliability: "9.0", start_time: "5AM", close_time: "12AM")

aaM_PPS = TransitLine.create(name: "Air Asia Manila - Puerto Princesa", kind: "Airplane", status: "Full Operation", restrictions: "None",
avg_price: 1500, operating_hours: "5AM - 12AM", reliability: "9.0", start_time: "5AM", close_time: "12AM")


# List of Transit Stops
cs = TransitStop.create(name: "Cubao Southbound", kind: "Bus Terminal", latitude: 14.631, longitude: 121.045)
cn = TransitStop.create(name: "Cubao Northbound", kind: "Bus Terminal", latitude: 14.632, longitude: 121.045)
pitx = TransitStop.create(name: "Parañaque Integrated Terminal Exchange", kind: "Transport Terminal", latitude: 14.51, longitude: 120.99)
ca = TransitStop.create(name: "Cubao Araneta", kind: "Transport Terminal", latitude: 14.51, longitude: 120.99)
technohub = TransitStop.create(name: "UP Ayala Technohub", kind: "Bus Stop", latitude: 14.657252, longitude:121.057616)
tandang = TransitStop.create(name: "Tandang Sora Avenue", kind: "Bus Stop", latitude: 14.663468, longitude: 121.068281)
gmaKamuning = TransitStop.create(name: "GMA Kamuning Station", kind: "Train Stop", latitude: 14.635008, longitude: 121.043074)
smNorthMRT = TransitStop.create(name: "North Avenue", kind: "Train Stop", latitude:14.652101, longitude: 121.032204)
taftMRT = TransitStop.create(name: "Taft Avenue", kind: "Train Stop", latitude: 14.537634, longitude:121.002229)
valenzuela = TransitStop.create(name: "Puregold Valenzuela", kind: "Bus Stop", latitude: 14.708930, longitude: 120.993755)
fiveStarMey = TransitStop.create(name: "Five Star Meycauayan", kind: "Bus Stop", latitude: 14.752572, longitude: 120.975030)
patubig = TransitStop.create(name: "Patubig / Duhat St. Bus Stop", kind: "Bus Stop", latitude: 14.776627, longitude: 120.959013)
smPampanga = TransitStop.create(name: "SM City Pampanga Jeepney Terminal", kind: "Jeepney Terminal", latitude: 15.051570, longitude: 120.700337)
robPampanga = TransitStop.create(name: "Robinsons Starmills", kind: "Bus Terminal", latitude: 15.049008, longitude: 120.698320)
angelesMarquee = TransitStop.create(name: "Marquee Mall", kind: "Bus Terminal", latitude: 15.162366, longitude: 120.608489)
dau = TransitStop.create(name: "Dau Bus Terminal", kind: "Bus Terminal", latitude: 15.178267, longitude: 120.589395)
mabalacat = TransitStop.create(name: "Magalang-Macalabat Terminal", kind: "Bus Terminal", latitude: 15.222026, longitude: 120.575341)
baguioVictory = TransitStop.create(name: "Baguio Victory Liner Bus Terminal", kind: "Bus Terminal", latitude: 16.405570, longitude: 120.602706)

engglibIkot = TransitStop.create(name: "EnggLib 2", kind: "Jeep Stop", latitude: 14.649442, longitude: 121.068768)
palmaIkot = TransitStop.create(name: "Palma Hall", kind: "Jeep Stop", latitude: 14.652509, longitude: 121.068944)
vinzonsIkot = TransitStop.create(name: "Vinzons Hall", kind: "Jeep Terminal", latitude: 14.654656, longitude: 121.073154)
scIkot = TransitStop.create(name: "Shopping Center", kind: "Jeep Stop", latitude: 14.659433, longitude: 121.070099)
chkIkot = TransitStop.create(name: "College of Human Kinetics", kind: "Jeep Stop", latitude: 14.657766, longitude: 121.062622)
kamagongIkot = TransitStop.create(name: "Kamagong Dorm", kind: "Jeep Stop", latitude: 14.648023, longitude: 121.062353)

our = TransitStop.create(name: "Office of the University Registrar", kind: "Jeep Stop", latitude: 14.651765, longitude: 121.066926)
albertHall = TransitStop.create(name: "Albert Hall", kind: "Jeep Stop", latitude: 14.652871, longitude: 121.062666)
shuster = TransitStop.create(name: "Shuster Gate", kind: "Jeep Stop", latitude: 14.653576, longitude: 121.073018)
katipUTurn = TransitStop.create(name: "Katipunan U-Turn", kind: "Jeep Stop", latitude: 14.632609, longitude: 121.074242)
horns = TransitStop.create(name: "University Avenue (Carabao Horns)", kind: "Jeep Stop", latitude: 14.654877, longitude: 121.061862)
technohub = TransitStop.create(name: "UP Ayala Technohub", kind: "Jeep Stop", latitude: 14.657582, longitude: 121.058010)
philcoa = TransitStop.create(name: "Philippine Coconut Authority (Philcoa)", kind: "Jeep Stop", latitude: 14.654034, longitude: 121.052915)
centris = TransitStop.create(name: "MRT-3 Centris Station", kind: "Jeep Stop", latitude: 14.644908, longitude: 121.038059)
smNorth = TransitStop.create(name: "SM North EDSA", kind: "Jeep Stop", latitude: 14.655460, longitude: 121.031826)
staRosa = TransitStop.create(name: "Santa Rosa", kind: "Transport Terminal", latitude: 14.293842, longitude: 121.103861)
uptc = TransitStop.create(name: "UP Town Center", kind: "Transport Terminal", latitude: 14.651381, longitude: 121.074686)
smMakati = TransitStop.create(name: "SM Makati", kind: "Bus Stop", latitude: 14.550238, longitude: 121.026374 )
regaladoFairview = TransitStop.create(name: "Regalado Bus Stop", kind: "Bus Stop", latitude: 14.706332, longitude: 121.069363)
glorietta = TransitStop.create(name: "Glorietta", kind: "Bus Terminal", latitude:14.551231, longitude: 121.026483)

clark = TransitStop.create(name: "Clark International Airport", kind: "International Airport", latitude:15.18583333, longitude: 120.55972222)
gensan = TransitStop.create(name: "General Santos International Airport", kind: "International Airport", latitude:6.05777778, longitude: 125.09583333)
iloilo = TransitStop.create(name: "Iloilo International Airport", kind: "International Airport", latitude:10.83277778, longitude: 122.4933333)
kalibo = TransitStop.create(name: "Kalibo International Airport", kind: "International Airport", latitude:11.67916667, longitude: 122.37583333)
laoag = TransitStop.create(name: "Laoag International Airport", kind: "International Airport", latitude:18.17055556, longitude: 120.53194444)
naia = TransitStop.create(name: "Ninoy Aquino National Airport International Airport (NAIA)", kind: "International Airport", latitude:18.17055556, longitude: 120.53194444)
puerto = TransitStop.create(name: "Puerto Princesa International Airport", kind: "International Airport", latitude:9.74194444, longitude: 118.75888889)
zamboanga = TransitStop.create(name: "Zamboanga International Airport", kind: "International Airport", latitude:6.92222222, longitude: 122.05972222)
legazpi = TransitStop.create(name: "Legazpi Airport", kind: "Airport", latitude:13.15694444, longitude: 123.74611111)





# Transit Lines and Transit Stops
f.transit_stops = [fiveStarMey,valenzuela,cn,pitx]
m.transit_stops = [smNorthMRT, gmaKamuning,taftMRT]
g.transit_stops = [dau,robPampanga,patubig, angelesMarquee,cs,pitx]
v.transit_stops = [baguioVictory, mabalacat, dau, angelesMarquee, robPampanga, smNorthMRT, cn]
ikot.transit_stops = [engglibIkot, palmaIkot, vinzonsIkot, scIkot, chkIkot, kamagongIkot,engglibIkot]
katip.transit_stops = [shuster, katipUTurn, shuster]
upSMNorthEdsa.transit_stops = [vinzonsIkot, horns, technohub, philcoa, smNorth]
p2pTCMakati.transit_stops = [uptc, glorietta]
upSMNorthEdsa.save
katip.save
ikot.save
f.save
m.save
g.save
v.save

aaM_ILO.transit_stops = [naia, iloilo]
aaM_PPS.transit_stops = [naia, puerto]
cebM_LG.transit_stops = [naia, laoag]
cebM_GES.transit_stops = [naia, gensan]
cebM_ZAM.transit_stops = [naia, zamboanga]
palM_LG.transit_stops = [naia, legazpi]
palM_LAO.transit_stops = [naia, laoag]
aaM_ILO.save
aaM_PPS.save

seans_route.transit_lines = [f,m,g]
seans_route.save

menards_route.transit_lines = [m,g]
menards_route.save

# Menard will populate more datapoints below ---


TransitLine.create(name: "UP-SM North EDSA Jeep", kind: "Jeep", status: "Full Operation", restrictions: "None", avg_price: 11.00,
  operating_hours: "8AM - 10PM", reliability: "8.0", start_time: "8AM", close_time: "10PM").transit_stops = [
  TransitStop.create(name: "UP Diliman", kind: "School", latitude: 14.653796, longitude: 121.068538),
  TransitStop.create(name: "Philippine Coconut Authority", kind: "Transport Terminal", latitude: 14.653625, longitude: 121.053138),
  TransitStop.create(name: "SM North EDSA", kind: "Transport Terminal", latitude: 14.656321, longitude: 121.028872)
]

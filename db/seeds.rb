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


# Transit Lines and Transit Stops
f.transit_stops = [fiveStarMey,valenzuela,cn,pitx]
m.transit_stops = [smNorthMRT, gmaKamuning,taftMRT]
g.transit_stops = [dau,robPampanga,patubig, angelesMarquee,cs,pitx]
v.transit_stops = [baguioVictory, mabalacat, dau, angelesMarquee, robPampanga, smNorthMRT, cn]
f.save
m.save
g.save
v.save

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

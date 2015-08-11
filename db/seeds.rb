# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Airport.create(name: "Aachen", code: "AAH")
Airport.create(name: "Bremen", code: "BRE")
Airport.create(name: "Köln", code: "CGN")
Airport.create(name: "Duisburg", code: "DUI")
Airport.create(name: "Gütersloh", code: "GUT")
Airport.create(name: "Hannover", code: "HAJ")
Airport.create(name: "Leipzig/Halle (Schkeuditz)", code: "LEJ")
Airport.create(name: "München", code: "MIG")
Airport.create(name: "Berlin", code: "OPP")
Airport.create(name: "Berlin (Tempelhof)", code: "THF")
Airport.create(name: "Berlin (Tegel)", code: "TXL")
Airport.create(name: "Bremen (Lemwerder)", code: "XWL")
Airport.create(name: "Weeze (Niederrhein)", code: "NRN")

Flight.create(from_airport_id: 1, to_airport_id: 2, start_datetime: Time.now, duration: 120 )
Flight.create(from_airport_id: 1, to_airport_id: 3, start_datetime: 3.hours.from_now, duration: 25 )
Flight.create(from_airport_id: 1, to_airport_id: 4, start_datetime: 1.day.from_now, duration: 320 )
Flight.create(from_airport_id: 1, to_airport_id: 6, start_datetime: 2.days.from_now, duration: 41 )
Flight.create(from_airport_id: 1, to_airport_id: 9, start_datetime: 6.hours.from_now, duration: 32 )
Flight.create(from_airport_id: 1, to_airport_id: 10, start_datetime: (2.days + 3.hours).from_now, duration: 12 )
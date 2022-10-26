# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.delete_all
Flight.delete_all

airports = Airport.create([{airport_code: "DUB"}, {airport_code: "KER"}, {airport_code: "CRK"}])

flights = Flight.create([{start_datetime: Date.parse('1-Nov-22'), duration: 200, departure_airport_id: 3, arrival_airport_id: 1},
  {start_datetime: Date.parse('3-Nov-22'), duration: 150, departure_airport_id: 3, arrival_airport_id: 2},
  {start_datetime: Date.parse('14-Nov-22'), duration: 100, departure_airport_id: 1, arrival_airport_id: 2}
  ])

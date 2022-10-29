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

3.times do
  da_id = Airport.order(Arel.sql('RANDOM()')).first.id
  aa_id = Airport.order(Arel.sql('RANDOM()')).where('id != ?', da_id).first.id
  duration = rand(30..240)
  time = rand(30.days).seconds.from_now
  Flight.create([{start_datetime: time, duration: duration, departure_airport_id: da_id, arrival_airport_id: aa_id}])
end

# 40.times do
#   da_id = Airport.order(Arel.sql('RANDOM()')).first.id
#   aa_id = Airport.order(Arel.sql('RANDOM()')).where('id != ?', da_id).first.id
#   d_time = rand(30.days).seconds.from_now
#   duration = rand(30..240)
#   Flight.create(departure_airport_id: da_id, arrival_airport_id: aa_id, duration: duration, start_datetime: d_time)
# end

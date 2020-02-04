# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Auden", username: "Liquidsword", password_digest: "torch")

# anaheim = Location.create(city: "Anaheim", state: "California", country: "USA")
#
# disney = anaheim.attraction.create(name: "Disneyland", description: "Great Rides!")
disney = Attraction.first
auden = User.first
# auden_disney = auden.trips.create(start_date: "2019-06-30", end_date: "2019-07-04")
#
# auden_disney.visits.create(attaction: disney, date:"2019-06-30")
auden.comments.create(content: "OMG it's Mickey!!!", attaction: disney)

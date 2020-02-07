# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name:"Auden", username: "Liquidsword", password: "pw")


# auden = User.create(name: "Auden", username: "Liquidsword", password: "torch")
auden = User.first
anaheim = Location.create(city: "Anaheim", state: "California", country: "USA")
#

disney = Attraction.first
disney = anaheim.attractions.create(name: "Disneyland", description: "Great Rides!")

auden_disney = auden.trips.create(start_date: "2019-06-30", end_date: "2019-07-04")
#
auden_disney.visits.create(attraction: disney, date:"2019-06-30")
auden.comments.create(content: "OMG it's Mickey!!!", attraction: disney)

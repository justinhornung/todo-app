# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
Category.create!(name: "Attic")
Category.create!(name: "Basement")
Category.create!(name: "Bathroom")
Category.create!(name: "Bedroom")
Category.create!(name: "Garage")
Category.create!(name: "Kitchen")
Category.create!(name: "Lawn/Garden")
Category.create!(name: "Living Room")

User.create(name: "Peter", email: "peter@test.com", password: "password")
User.create!(name: "jay", email: "jay@test.com", password: "password")

Todo.create!(user_id: "1", title: "house", description: "cleaning living room", deadline: "tomorrow", completed: "no")
Todo.create!(user_id: "2", title: "house", description: "cleaning garage", deadline: "Friday", completed: "no")
Todo.create!(user_id: "2", title: "house", description: "cleaning bedroom", deadline: "Monday", completed: "Yes")

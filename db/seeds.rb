# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

abril = User.create(name: "Abril", username: "abril", password: "abc123")
chris = User.create(name: "Chris", username: "chris", password: "abc123")
sam = User.create(name: "Sam", username: "sam")


xmas = DinnerParty.create(host: abril)

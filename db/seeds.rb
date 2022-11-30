# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(email: 'elio@gmail.com', name: 'Elio Nel',  password: '123456', password_confirmation: '123456')
Training.create!(location: "Timiza park", distance: 1.5, duration: "2022-11-29 20:07:10", start_hour: "2022-11-29 20:07:10",
     training_date: "2022-11-29", feel: 1, user_id:user1.id)
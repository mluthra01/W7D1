# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying tables...'
User.destroy_all
Cat.destroy_all

puts 'Resetting id sequences...'
%w(User).each do |table_name|
  ApplicationRecord.connection.reset_pk_sequence!(table_name)
end

puts 'Creating seed data...'
User.create!(username: "U1", password: "password")
User.create!(username: "U2", password: "password")
User.create!(username: "U3", papapssword: "password")
User.create!(username: "U4", password: "password")
Cat.create!(birth_date: "2022-03-20", color: "orange", name: "Clementine", sex: "F")
Cat.create!(birth_date: "2020-01-01", color: "black", name: "Whiskers", sex: "M", description: "Likes to cuddle and play with strings.")
Cat.create!(birth_date: "2020-02-01", color: "white", name: "Snowball", sex: "F", description: "Friendly and loves to be brushed.")
Cat.create!(birth_date: "2020-03-01", color: "brown", name: "Fluffy", sex: "M", description: "Quiet and loves to nap in sunbeams.")

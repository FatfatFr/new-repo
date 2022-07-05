# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Item.destroy_all
User.destroy_all


user1 = User.create(first_name: 'John', last_name: 'Doe', email: 'john@example.com', password: '123456', address: 'road1', phone_number: '123456789')
user1.save
user2 = User.create(first_name: 'Anna', last_name: 'Belle', email: 'anna@example.com', password: '123456', address: 'road2', phone_number: '24681012')
user2.save
user3 = User.create(first_name: 'Bella', last_name: 'Care', email: 'bella@example.com', password: '123456', address: 'road3', phone_number: '369121416')
user3.save

img1 = URI.open(https://www.pexels.com/fr-fr/photo/photographie-de-bokeh-de-rose-rouge-1003914/)
item1.photo.attach(io: img1, filename:'', content_type: "image/png")
img2 = URI.open(https://www.pexels.com/fr-fr/photo/photographie-de-bokeh-de-rose-rouge-1003914/)
img3 = URI.open(https://www.pexels.com/fr-fr/photo/photographie-de-bokeh-de-rose-rouge-1003914/)

item1 = Item.create(name: 'first item', categroy:'first category', available: true, description: 'This is the description of the first item', price_per_day:1)
item2 = Item.create(name: 'second item', categroy:'second category', available: true, description: 'This is the description of the second item', price_per_day:2)
item3 = Item.create(name: 'third item', categroy:'third category', available: false, description: 'This is the description of the third item', price_per_day:3)

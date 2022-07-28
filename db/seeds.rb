# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer_1 = Customer.create!({first_name: 'Bugs', last_name: 'Bunny', email: 'rabbit@gmail.com', address: '321 Troller Rd'})
customer_2 = Customer.create!({first_name: 'Daffy', last_name: 'Duck', email: 'duck@gmail.com', address: '123 Marsh Rd'})
customer_3 = Customer.create!({first_name: 'Marvin', last_name: 'Martian', email: 'alien@gmail.com', address: '101 Milky Way'})

subscription_1 = Subscription.create!({title: 'Green tea', price: 5, status: 1, frequency: 0, customer_id: customer_1.id})
subscription_2 = Subscription.create!({title: 'Black tea', price: 6, status: 1, frequency: 0, customer_id: customer_1.id})
subscription_3 = Subscription.create!({title: 'Blue tea', price: 7, status: 1, frequency: 1, customer_id: customer_2.id})
subscription_4 = Subscription.create!({title: 'Red tea', price: 8, status: 1, frequency: 1, customer_id: customer_3.id})
subscription_5 = Subscription.create!({title: 'Orange tea', price: 9, status: 1, frequency: 2,  customer_id: customer_3.id})

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Trey = Customer.create(name:'Trey', phone_number: 912, email:'tjennings343@gmail.com')
Heather = Customer.create(name:'Heather', phone_number: 931, email:'hjennings@gmail.com')
Ray = Customer.create(name:'Ray', phone_number: 970, email:'rjennings@mail.com')

XR = Phone.create(customer_id: 1, phone_type:'Iphone XR', purchase_date:'02/2019')
Pro = Phone.create(customer_id: 2, phone_type:'Iphone 11 Pro', purchase_date:'08/2019')
ProMax = Phone.create(customer_id: 3, phone_type: 'Iphone 12 ProMax', purchase_date:'11/2020')
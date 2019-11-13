# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'La Botega',
    address:      'Little Italy',
    category:     'italian',
    phone_number: '514-652-6332'
  },
   {
    name:         'Japote',
    address:      'Sherbrook avenue',
    category:     'japanese',
    phone_number: '438-881-9058'
  },  {
    name:         'Pizza 900',
    address:      'Av Bernard',
    category:     'italian',
    phone_number: '438-881-4339'
  },  {
    name:         'Bouillon Pigal',
    address:      'Pigal',
    category:     'french',
    phone_number: '06-99-80-24-25'
  },  {
    name:         'Frites Alors!',
    address:      'Av du Parc',
    category:     'belgian',
    phone_number: '438-978-1003'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

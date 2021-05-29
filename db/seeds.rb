# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all
User.destroy_all

require "open-uri"

user = User.create!(email:'test@test.com', password: 'secret')

tokyo = Flat.create!(name: 'Terrace House', address: 'Tokyo', description: 'Sleeps six in the heart of Tokyo', price: '1000', user_id: user.id)

tokyo_array = ['http://www.terrace-house.jp/inthecity/photo/gallery1_1.jpg','http://www.terrace-house.jp/inthecity/photo/gallery1_2.jpg', 'http://www.terrace-house.jp/inthecity/photo/gallery1_3.jpg', 'http://www.terrace-house.jp/inthecity/photo/gallery1_4.jpg', 'http://www.terrace-house.jp/inthecity/photo/gallery1_5.jpg']

tokyo_array.each do |url|
  file = URI.open(url)
  tokyo.photos.attach(io: file, filename: 'flat.png', content_type: 'image/png')
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Review.destroy_all
Flat.destroy_all
User.destroy_all

require "open-uri"

user = User.create!(email:'test@test.com', password: 'secret', username: 'raeesahub')
user2 = User.create!(email:'test2@test.com', password: 'secret', username: 'ssaunier')

madrid = Flat.create!(name: 'Penthouse hideaway', address: 'Madrid', description:'Recline after a long day of exploration in the two-level penthouse roost. White-washed floorboards and exposed beams and plenty of skylights ensure the perfect mix of inspirational and old world charm.
', price: '100', user_id: user.id)

madrid_array = ['https://a0.muscache.com/im/pictures/06d697d0-c257-4834-bb79-39c634b84ab8.jpg?im_w=720','https://a0.muscache.com/im/pictures/eba0cc04-26ae-4887-a2ce-fe2d6620d089.jpg?im_w=1200','https://a0.muscache.com/im/pictures/a2ef90d8-4a56-494f-a052-6685910f54cc.jpg?im_w=1200']

madrid_array.each do |url|
  file = URI.open(url)
  madrid.photos.attach(io: file, filename: 'flat.png', content_type: 'image/png')
end

mykonos = Flat.create!(name: 'Luxury stay in Mykonos, Greece', address: 'Mykonos', description: 'Capture iconic views of the Aegean Sea from this modern-Cycladic villa etched into the side of Kounoupas Hill in Mykonos.', price: '700', user_id: user2.id)

mykonos_array = ['https://a0.muscache.com/4ea/air/v2/pictures/c6307530-b6f5-4816-be51-9e0ae89e125c.jpg?t=c:w16-h9-go,r:w2000,e:fjpg-c75','https://a0.muscache.com/im/pictures/4b55ccc6-2869-4324-8f3a-3ac99da63ac4.jpg?im_w=1200','https://a0.muscache.com/im/pictures/f5549307-6eb6-4bc2-8af2-b9b950bf768b.jpg?im_w=720','https://a0.muscache.com/im/pictures/7748359e-a567-46de-bc9c-d43b4f871dfc.jpg?im_w=720']

mykonos_array.each do |url|
  file = URI.open(url)
  mykonos.photos.attach(io: file, filename: 'flat.png', content_type: 'image/png')
end

tokyo = Flat.create!(name: 'Terrace House', address: 'Tokyo', description: 'Sleeps six in the heart of Tokyo', price: '1000', user_id: user.id)

tokyo_array = ['http://www.terrace-house.jp/inthecity/photo/gallery1_1.jpg','http://www.terrace-house.jp/inthecity/photo/gallery1_2.jpg', 'http://www.terrace-house.jp/inthecity/photo/gallery1_3.jpg', 'http://www.terrace-house.jp/inthecity/photo/gallery1_4.jpg', 'http://www.terrace-house.jp/inthecity/photo/gallery1_5.jpg']

tokyo_array.each do |url|
  file = URI.open(url)
  tokyo.photos.attach(io: file, filename: 'flat.png', content_type: 'image/png')
end

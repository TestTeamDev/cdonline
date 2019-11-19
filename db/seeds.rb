# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#admin
Admin.create!(
   email: 'test@test.com',
   password: 'testtest'
)

#enduser
100.times do |n|
 first_name = Faker::Name.last_name
 last_name = Faker::Name.first_name
 reading_first_name = Faker::Food.sushi
 reading_last_name = Faker::Food.sushi
 email = Faker::Internet.free_email
 password = "000000"
 address = "東京都渋谷区渋谷１−１−１"
 phone_number = "111-1111-11#{n+1}"
Enduser.create!(
   first_name: first_name,
   last_name: last_name,
   email: email,
   password: password,
   reading_first_name: reading_first_name,
   reading_last_name: reading_last_name,
   postcode: '111-1111',
   address: address,
   phone_number: phone_number,
)
end

100.times do |n|
 first_name = Faker::Name.last_name
 last_name = Faker::Name.first_name
Order.create!(
   enduser_id: 3,
   first_name: first_name,
   last_name: last_name,
   postcode: '333-3333',
   address: '東京都渋谷区渋谷3−3−3',
   total_price: 5000,
   postage: 500,
)
Order.create!(
   enduser_id: 2,
   first_name: first_name,
   last_name: last_name,
   postcode: '333-3333',
   address: '神奈川県横浜市中区4-34-5',
   total_price: 10000,
   postage: 500,
)
Order.create!(
   enduser_id: 6,
   first_name: first_name,
   last_name: last_name,
   postcode: '333-3333',
   address: '千葉県市原市市原4-34-5',
   total_price: 1500,
   postage: 500,
)
end

#arist
Artist.create!(
   name: 'ONE-OK-ROCK'
   )
Artist.create!(
   name: 'Mr.Children'
   )
Artist.create!(
   name: '星野源'
   )
Artist.create!(
   name: 'backnumber'
   )
Artist.create!(
   name: 'あいみょん'
   )
Artist.create!(
   name: 'official髭男disim'
   )
Artist.create!(
   name: 'コブクロ'
   )
Artist.create!(
   name: 'TOKIO'
   )
Artist.create!(
   name: 'BISH'
   )

#genre
Genre.create!(
   name: 'ROCK'
   )
Genre.create!(
   name: '洋ROCK'
   )
Genre.create!(
   name: 'ラップ'
   )
Genre.create!(
   name: '邦ROCK'
   )
#label
Label.create!(
   name: 'sony-entertainment'
   )
Label.create!(
   name: 'avex-entertainment'
   )
Label.create!(
   name: 'zaki-entertainment'
   )
Label.create!(
   name: 'matu-entertainment'
   )
Label.create!(
   name: 'yuu-entertainment'
   )

#CD
100.times do |n|
title = Faker::Food.sushi
release_date =  Faker::Time.between_dates(from: Date.today - 100, to: Date.today + 10, period: :all)
 Cd.create!(
   artist_id: 1,
   genre_id: 1,
   label_id: 1,
   title: title,
   price: 1000,
   sell_status: 1,
   release_date: release_date,
)
 Cd.create!(
   artist_id: 2,
   genre_id: 2,
   label_id: 2,
   title: title,
   price: 1000,
   sell_status: 1,
   release_date: release_date,
)
 Cd.create!(
   artist_id: 5,
   genre_id: 3,
   label_id: 3,
   title: title,
   price: 1000,
   sell_status: 2,
   release_date: release_date,
)
end

#order
OrderProduct.create!(
   order_id: 1,
   cd_id: 1,
   order_count: 5,
   subtotal_price: 5000,
)












# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'test@test.com',
   password: 'testtest'
)

Enduser.create!(
   first_name: '鈴木',
   last_name: '一郎',
   email: 'aaa@aaaa.com',
   password: 'aaaaaa',
   reading_first_name: 'スズキ',
   reading_last_name: 'イチロウ',
   postcode: '111-1111',
   address: '東京都渋谷区渋谷１−１−１',
   phone_number: "111-1111-111",
)
Enduser.create!(
   first_name: '佐藤',
   last_name: '一郎',
   email: 'bbb@bbbb.com',
   password: 'bbbbbb',
   reading_first_name: 'サトウ',
   reading_last_name: 'イチロウ',
   postcode: '222-2222',
   address: '東京都渋谷区渋谷2−2−2',
   phone_number: "222-2222-222",
)
Enduser.create!(
   first_name: '木村',
   last_name: '拓也',
   email: 'ccc@cccc.com',
   password: 'cccccc',
   reading_first_name: 'キムラ',
   reading_last_name: 'タクヤ',
   postcode: '333-3333',
   address: '東京都渋谷区渋谷3−3−3',
   phone_number: "333-3333-",
)


Artist.create!(
   name: 'backnumber',
)

Genre.create!(
   name: 'J-POP',
)

Label.create!(
   name: 'avex',
)
=======
Order.create!(
   enduser_id: 1,
   first_name: '木村',
   last_name: '拓也',
   postcode: '333-3333',
   address: '東京都渋谷区渋谷3−3−3',
   total_price: 5000,
   postage: 500,
)

Artist.create!(
   name: 'ONE-OK-ROCK'
   )

Genre.create!(
   name: 'ROCK'
   )

Label.create!(
   name: 'sony-entertainment'
   )

Cd.create!(
   artist_id: 1,
   genre_id: 1,
   label_id: 1,
   title: 'キミシダイ列車',
   price: 1000,
   sell_status: 1,
   release_date: 2019-11-17,
)

OrderProduct.create!(
   order_id: 1,
   cd_id: 1,
   order_count: 5,
   subtotal_price: 5000,
)















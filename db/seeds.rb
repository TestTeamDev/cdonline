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

Enduser.create!(
   first_name: 'ざき',
   last_name: 'かず',
   reading_first_name: 'ザキ',
   reading_last_name: 'カズ',
   postcode: '811-0114',
   address: '福岡県糟屋郡志免町神宮2-12-22',
   phone_number: '888-6543',
   email: 'te@test.com',
   password: '111111'
)

DeliveryAddress.create!(
   enduser_id: 1,
   first_name: 'ざき',
   last_name: 'かず',
   postcode: '811-0114',
   address: '福岡県糟屋郡志免町神宮2-12-22'
)

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

Cd.create!(
   artist_id: 1,
   genre_id: 1,
   label_id: 1,
   title: 'キミシダイ列車',
   price: 1000,
   sell_status: 1,
   release_date: 2016-12-4,
)

Cd.create!(
   artist_id: 1,
   genre_id: 1,
   label_id: 1,
   title: '完全感覚dreamer',
   price: 1300,
   sell_status: 1,
   release_date: 2016-11-4,
)

Order.create!(
   enduser_id: 1,
   first_name: 'zaki',
   last_name: 'kazu',
   postcode: '333-3333',
   address: '東京都世田谷区渋谷3−3−3',
   status: 1,
   total_price: 7000,
   postage: 500,
)


#order
OrderProduct.create!(
   order_id: 1,
   cd_id: 1,
   order_count: 2,
   subtotal_price: 5000,
   order_tax_rate: 1.1
)

OrderProduct.create!(
   order_id: 1,
   cd_id: 2,
   order_count: 4,
   subtotal_price: 5000,
   order_tax_rate: 1.1
)

CartItem.create!(
   enduser_id: 1,
   cd_id: 1,
   item_count: 2
)

CartItem.create!(
   enduser_id: 1,
   cd_id: 2,
   item_count: 4
)


TaxRate.create!(
   )

Postage.create!(
   )


















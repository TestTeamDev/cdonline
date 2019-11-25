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

Inquire.create!(
 name: 'ザキ',
 mail: 'aquaglass777@gmail.com',
 title: '在庫について',
 body: 'このCDはいつごろ再入荷しますか？',

   )

TaxRate.create!(
   )

Postage.create!(
   )


Enduser.create!(
   first_name: '田中',
   last_name: '太郎',
   reading_first_name: 'タナカ',
   reading_last_name: 'タロウ',
   postcode: '811-0114',
   address: '東京都渋谷区神宮2-12-22',
   phone_number: '111-6543',
   email: 'te@test.com',
   password: '111111'
)

DeliveryAddress.create!(
   enduser_id: 1,
   first_name: '田中',
   last_name: '太郎',
   postcode: '111-0114',
   address: '東京都渋谷区神宮2-12-22'
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
   type: 0,
   sell_status: 0,
   release_date: 2016-12-4,
)

Cd.create!(
   artist_id: 1,
   genre_id: 1,
   label_id: 1,
   title: '完全感覚dreamer',
   price: 1300,
   sell_status: 0,
   type: 0,
   release_date: 2016-11-4,
)

Cd.create!(
   artist_id: 1,
   genre_id: 1,
   label_id: 1,
   title: '完全感覚dreamer',
   price: 1300,
   sell_status: 0,
   type: 0,
   release_date: 2016-11-4,
)
















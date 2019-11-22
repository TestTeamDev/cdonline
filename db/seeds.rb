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

















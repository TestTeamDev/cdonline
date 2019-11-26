FactoryBot.define do
  factory :enduser do

    first_name { '田中' }
    last_name { '太郎' }
    reading_first_name { 'タナカ' }
    reading_last_name { 'タロウ' }
    postcode { '811-0114' }
    address { '東京都渋谷区神宮2-12-22' }
    phone_number { '111-6543' }
    email { 'te@test.com' }
    password { '111111' }

  end
end

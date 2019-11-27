require 'rails_helper'

RSpec.describe DeliveryAddress, type: :model do
  describe '正常系の機能' do
    context '配送先の登録する' do
      it '正しく登録できること )' do

      	enduser = Enduser.new(
          first_name: '田中',
          last_name: '太郎',
          reading_first_name: 'タナカ',
          reading_last_name: 'タロウ',
          postcode: '811-0114',
          address: '東京都渋谷区神宮2-12-22',
          phone_number: '111-6543',
          email: 'te@test.com',
          password: '111111',
        )

        enduser.save

      	enquete = DeliveryAddress.new(
          enduser_id: 1,
          first_name: '田中',
          last_name: '太郎',
          postcode: '111-0114',
          address: '東京都渋谷区神宮2-12-22'
        )

        expect(enquete).to be_valid

        enquete.save

        #テストデータの確認
        answered_enquete = DeliveryAddress.find(1);

        expect(answered_enquete.enduser_id).to eq(1)
        expect(answered_enquete.first_name).to eq('田中')
        expect(answered_enquete.last_name).to eq('太郎')
        expect(answered_enquete.postcode).to eq('111-0114')
        expect(answered_enquete.address).to eq('東京都渋谷区神宮2-12-22')
      end
    end
  end

  describe '入力項目の有無' do
    context '必須入力であること' do

    	enduser = Enduser.new(
          first_name: '田中',
          last_name: '太郎',
          reading_first_name: 'タナカ',
          reading_last_name: 'タロウ',
          postcode: '811-0114',
          address: '東京都渋谷区神宮2-12-22',
          phone_number: '111-6543',
          email: 'te@test.com',
          password: '111111',
        )

        enduser.save

      it 'お名前が必須であること' do
        new_enquete = DeliveryAddress.new
        expect(new_enquete).not_to be_valid
        expect(new_enquete.errors[:first_name]).to include(I18n.t('errors.messages.blank'))
      end

      it '住所が必須であること' do
        new_enquete = DeliveryAddress.new
        expect(new_enquete).not_to be_valid
        expect(new_enquete.errors[:address]).to include(I18n.t('errors.messages.blank'))
      end

      it '登録できないこと' do
        new_enquete = DeliveryAddress.new
        expect(new_enquete.save).to be_falsey
      end
    end
  end
end





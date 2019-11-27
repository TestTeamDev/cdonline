require 'rails_helper'

RSpec.describe Enduser, type: :model do
  describe '正常系の機能' do
    context '登録する' do
      it '正しく登録できること )' do

      	enquete = Enduser.new(
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

        expect(enquete).to be_valid

        enquete.save

        #テストデータの確認
        answered_enquete = Enduser.find(1);

        expect(answered_enquete.first_name).to eq('田中')
        expect(answered_enquete.last_name).to eq('太郎')
        expect(answered_enquete.reading_first_name).to eq('タナカ')
        expect(answered_enquete.reading_last_name).to eq('タロウ')
        expect(answered_enquete.postcode).to eq('811-0114')
        expect(answered_enquete.address).to eq('東京都渋谷区神宮2-12-22')
        expect(answered_enquete.phone_number).to eq('111-6543')
        expect(answered_enquete.email).to eq('te@test.com')
      end
    end
  end

  describe '入力項目の有無' do
    context '必須入力であること' do
      it 'お名前が必須であること' do
        new_enquete = Enduser.new

        expect(new_enquete).not_to be_valid

        expect(new_enquete.errors[:first_name]).to include(I18n.t('errors.messages.blank'))
      end

      it 'メールアドレスが必須であること' do
        new_enquete = Enduser.new
        expect(new_enquete).not_to be_valid
        expect(new_enquete.errors[:email]).to include(I18n.t('errors.messages.blank'))
      end

      it '登録できないこと' do
        new_enquete = Enduser.new

        expect(new_enquete.save).to be_falsey
      end
    end
  end
end



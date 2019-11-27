require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe '正常系の機能' do
    context '登録する' do
      it '正しく登録できること )' do

      	enquete = Admin.new(
          email: 'te@test.com',
          password: '111111',
        )

        expect(enquete).to be_valid

        enquete.save

        #テストデータの確認
        answered_enquete = Admin.find(1);

        expect(answered_enquete.email).to eq('te@test.com')
      end
    end
  end

  describe '入力項目の有無' do
    context '必須入力であること' do

      it 'メールアドレスが必須であること' do
        new_enquete = Admin.new
        expect(new_enquete).not_to be_valid
        expect(new_enquete.errors[:email]).to include(I18n.t('errors.messages.blank'))
      end

      it '登録できないこと' do
        new_enquete = Admin.new

        expect(new_enquete.save).to be_falsey
      end
    end
  end
end

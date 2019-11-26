require 'rails_helper'

RSpec.describe CartItem, type: :model do
  describe '正常系の機能' do
    context '配送先の登録する' do
      it '正しく登録できること )' do

      	enduser = FactoryBot.build(:enduser)
        enduser.save

      	genre = Genre.new(
          name: 'Rock'
        )
        genre.save

        lavel = Label.new(
          name: 'ソニーエンターテインメント'
        )
        lavel.save

        artist = Artist.new(
          name: 'Uverworld'
        )
        artist.save

        cd = Cd.new(
          artist_id: 1,
          genre_id: 1,
          label_id: 1,
          title: 'praying run',
          type: 0,
          price: 1000,
          sell_status: 1,
          release_date: 2016-11-4
        )
        cd.save


        cart = FactoryBot.build(:cart_item)

        expect(cart).to be_valid
        cart.save

        #テストデータの確認
        answered_enquete = CartItem.find(1);

        expect(answered_enquete.enduser_id).to eq(1)
        expect(answered_enquete.cd_id).to eq(1)
        expect(answered_enquete.item_count).to eq(1)
      end
    end
  end

  describe '入力項目の有無' do
    context '必須入力であること' do

    	enduser = FactoryBot.build(:enduser)
        enduser.save

      	genre = Genre.new(
          name: 'Rock'
        )
        genre.save

        lavel = Label.new(
          name: 'ソニーエンターテインメント'
        )
        lavel.save

        artist = Artist.new(
          name: 'Uverworld'
        )
        artist.save

        cd = Cd.new(
          artist_id: 1,
          genre_id: 1,
          label_id: 1,
          title: 'praying run',
          type: 0,
          price: 1000,
          sell_status: 1,
          release_date: 2016-11-4
        )
        cd.save

      it '外部キーが必須であること' do
        new_enquete = CartItem.new

        expect(new_enquete).not_to be_valid
        expect(new_enquete.errors[:cd_id])
      end

      it '登録できないこと' do
        new_enquete = CartItem.new

        expect(new_enquete.save).to be_falsey
      end
    end
  end
end

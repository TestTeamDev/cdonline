require 'rails_helper'
require 'support/controller_macros.rb'

RSpec.describe "DeliveryAddresses", type: :request do
  describe '異常' do
    context "エンドユーザーのログインなしで遷移できないとこ" do
      it "" do

        get "http://localhost:3000/enduser/delivery_addresses/new"

        expect(response).to have_http_status(302)

      end
    end
  end

  # describe '正常に動作する' do
  #   context "ログインをする" do
  #     before do
  #       @user = FactoryBot.create(:enduser)
  #     end

  #     before do
  #       login_user @user
  #     # controller_macros.rb内のlogin_userメソッドを呼び出し
  #     end
  #     it "ログイン後に遷移できること" do

  #       get "http://localhost:3000/enduser/delivery_addresses/new"

  #       expect(response).to have_http_status(200)

  #     end
  #   end
  # end
end

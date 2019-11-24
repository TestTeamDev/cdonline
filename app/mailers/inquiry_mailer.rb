class InquiryMailer < ApplicationMailer

  def send_when_admin_reply(inquiry) #メソッドに対して引数を設定
  	@mail = inquiry.mail
    @user = inquiry.name #ユーザー情報
    @title = inquiry.re_title
    @answer = inquiry.re_body #返信内容
    mail to: @mail, subject: "inquiry.re_title"
  end

end

class InquireMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquire_mailer.inquire_mail.subject
  #
  def inquire_mail(inquire)
    @greeting = "Hi"

    mail to: ENV['MAIL'], subject: "メールのタイトル"
  end
end

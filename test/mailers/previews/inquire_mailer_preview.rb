# Preview all emails at http://localhost:3000/rails/mailers/inquire_mailer
class InquireMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/inquire_mailer/inquire_mail
  def inquire_mail
    InquireMailer.inquire_mail
  end

end

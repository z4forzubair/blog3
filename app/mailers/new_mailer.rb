class NewMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.new_mailer.signup_confirmation.subject
  #
  def signup_confirmation
    #user='zubairpunjab786@gmail.com'

    mail to: 'zubairpunjab786@gmail.com', subject: "Confirming automatic email"
  end
end

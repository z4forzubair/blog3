# Preview all emails at http://localhost:3000/rails/mailers/new_mailer
class NewMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/new_mailer/signup_confirmation
  def signup_confirmation
    NewMailer.signup_confirmation
  end

end

# test/mailers/previews/user_mailer_preview.rb

class UserMailerPreview < ActionMailer::Preview
  def welcome_preview
    UserMailer.welcome(User.first)
  end
end

# preview it at:
# http://localhost:3000/rails/mailers/user_mailer/welcome_preview

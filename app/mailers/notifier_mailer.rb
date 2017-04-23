class NotifierMailer < ApplicationMailer
  default from: 'hannahwynnjones2@gmail.com'

  def welcome_email(user)
    @user = user
    # email_with_name = %("#{@user.username}" <#{@user.email}>)
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview
  def notifier_mailer_preview
    NotifierMailer.welcome_email(User.first)
  end
end

class UserMailer < ActionMailer::Base
  default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    Rails.logger.debug 'DEBUG: Owner email is ' + Rails.application.secrets.owner_email
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
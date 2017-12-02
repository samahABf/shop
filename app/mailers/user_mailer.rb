
class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'samah.aldafy.1994@gmail.com',
         subject: "A new contact form message from #{name}",
    body: "A new contact form message from #{message}")

  end
end
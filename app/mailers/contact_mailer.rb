class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail( from:"system@system.com", to:"butohes.official@gmail.com",subject: "CONTACT通知")
  end
end

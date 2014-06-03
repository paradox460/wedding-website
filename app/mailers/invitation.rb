class Invitation < ActionMailer::Base
  default from: "jeff@sandbergwedding.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation.invitation.subject
  #
  def invitation(invite)
    @invite = invite

    mail to: invite.email, subject: 'Invitation to Sandberg/Sessions wedding!'
  end
end

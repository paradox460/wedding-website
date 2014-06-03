# Preview all emails at http://localhost:3000/rails/mailers/invitation
class InvitationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/invitation/invitation
  def invitation
    Invitation.invitation
  end

end

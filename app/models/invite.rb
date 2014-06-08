class Invite < ActiveRecord::Base
  before_create :random_code

  has_one :rsvp

  def send_invite
    if Invitation.invitation(self).deliver
      self.sent = Time.now
      self.save
    end
  end
  private
  def random_code
    begin
      self.code = rand(32**6).to_s(32)
    end while Invite.where(code: self.code).exists?
  end
end

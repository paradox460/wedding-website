class Invite < ActiveRecord::Base
  before_create :random_code

  has_one :rsvp

  private
  def random_code
    begin
      self.code = rand(32**6).to_s(32)
    end while Invite.where(code: self.code).exists?
  end
end

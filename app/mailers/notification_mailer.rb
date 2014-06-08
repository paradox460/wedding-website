class NotificationMailer < ActionMailer::Base
  default from: "notifications@sandbergwedding.com"

  def new_rsvp(rsvp)
    @rsvp = rsvp

    mail to: '***REMOVED***', subject: "#{@rsvp.invite.name} is #{@rsvp.attending ? 'coming' : 'not coming'}"
    mail to: '***REMOVED***', subject: "#{@rsvp.invite.name} is #{@rsvp.attending ? 'coming' : 'not coming'}"
  end
end

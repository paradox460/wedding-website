class InviteController < ApplicationController
  def view
    @invite = Invite.where(code: params[:code]).take
    if @invite.rsvp.present?
      render 'already_rsvpd'
    end
  end

  def accept
    @invite = Invite.where(code: params[:code]).take
    @invite.rsvp = Rsvp.create(attending: true, adults: params[:adults], children: params[:children]) unless @invite.rsvp.exists?
  end

  def reject
    @invite = Invite.where(code: params[:code]).take
    @invite.rsvp = Rsvp.create(attending: false) unless @invite.rsvp.exists?
  end
end

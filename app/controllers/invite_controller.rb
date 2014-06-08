class InviteController < ApplicationController
  def view
    @invite = Invite.where(code: params[:code]).take
    if @invite.rsvp.present?
      render 'already_rsvpd'
    end
  end

  def accept
    @invite = Invite.where(code: params[:code]).take
    @rsvp = Rsvp.new(attending: true, adults: params[:adults], children: params[:children]) unless @invite.rsvp.present?
    respond_to do |format|
      if @rsvp.save
        @invite.rsvp = @rsvp
        format.html {render :accept }
      else
        format.html { redirect_to invite_view_path(@invite.code, anchor: 'accept'), notice: 'Adults/Children must be numbers' }
      end
    end
  end

  def reject
    @invite = Invite.where(code: params[:code]).take
    @invite.rsvp = Rsvp.create(attending: false) unless @invite.rsvp.present?
  end
end

class ChangeRsvpStatusToBoolean < ActiveRecord::Migration
  def change
    remove_column :rsvps, :status, :string
    add_column :rsvps, :attending, :boolean
  end
end

class ChangeRsvpToHoldAdultsAndChildren < ActiveRecord::Migration
  def change
    rename_column :rsvps, :number, :adults
    add_column :rsvps, :children, :string
  end
end

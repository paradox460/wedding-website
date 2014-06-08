class AddSentDateToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :sent, :datetime
  end
end

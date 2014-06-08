class AddDefaultsToRsvp < ActiveRecord::Migration
  def up
    change_table :rsvps do |t|
      t.remove :adults
      t.remove :children
      t.integer :adults, default: 1
      t.integer :children, default: 0
    end
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

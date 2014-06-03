class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :status
      t.string :number
      t.references :invite, index: true

      t.timestamps
    end
  end
end

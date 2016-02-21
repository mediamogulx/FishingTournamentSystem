class CreateOrganizerPhoto < ActiveRecord::Migration
  def change
    create_table :OrganizerPhoto do |t|
      t.integer :OrganizerID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

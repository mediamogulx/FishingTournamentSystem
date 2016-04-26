class CreateOrganizerPhoto < ActiveRecord::Migration
  def change
    create_table :organizer_photos do |t|
      t.integer :OrganizerID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

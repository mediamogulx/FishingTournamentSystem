class CreateOrganizerPhoto < ActiveRecord::Migration
  def change
    create_table :organizer_photos do |t|
      t.integer :OrganizerID, null: false
      t.integer :PhotoID, null: false
    end
  end
end

class CreateOrganizer < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.integer :OrganizerID, primary_key: true
      t.integer :FishingClubID, foreign_key: true
      t.string  :Name, null: false
      t.text    :Description
      t.text    :Website
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

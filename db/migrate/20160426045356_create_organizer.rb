class CreateOrganizer < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.integer :OrganizerID
      t.integer :FishingClubID
      t.string  :Name, null: false
      t.text    :Description
      t.text    :Website
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

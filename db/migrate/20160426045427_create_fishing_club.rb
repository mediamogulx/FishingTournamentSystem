class CreateFishingClub < ActiveRecord::Migration
  def change
    create_table :fishing_clubs do |t|
      t.integer :FishingClubID, foreign_key: true
      t.string  :Name, null: false
      t.text    :Description
      t.text    :Website
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

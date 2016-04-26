class CreateFishingClubPhoto < ActiveRecord::Migration
  def change
    create_table :fishing_club_photos do |t|
      t.integer :FishingClubID, null: false
      t.integer :PhotoID, null: false
    end
  end
end

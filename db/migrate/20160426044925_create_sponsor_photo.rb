class CreateSponsorPhoto < ActiveRecord::Migration
  def change
    create_table :sponsor_photos do |t|
      t.integer :SponsorID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

class CreateSponsorPhoto < ActiveRecord::Migration
  def change
    create_table :sponsor_photos do |t|
      t.integer :SponsorID, null: false
      t.integer :PhotoID, null: false
    end
  end
end

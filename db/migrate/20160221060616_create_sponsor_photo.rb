class CreateSponsorPhoto < ActiveRecord::Migration
  def change
    create_table :SponsorPhoto do |t|
      t.integer :SponsorID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

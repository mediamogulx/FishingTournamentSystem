class CreateAngler < ActiveRecord::Migration
  def change
    create_table :anglers do |t|
      t.integer :AnglerID, index: true
      t.text    :Type, null: false
      t.string  :FirstName, null: false
      t.string  :MI
      t.string  :LastName, null: false
      t.string  :Email, null: false
      t.integer :FishingClubID
      t.text    :CreateDt
      t.text    :LastUpdateDt

      t.timestamps null: false
    end
  end
end

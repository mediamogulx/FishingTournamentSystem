class CreateAngler < ActiveRecord::Migration
  def change
    create_table :Angler do |t|
      t.integer :AnglerID, index: true, primary_key: true
      t.text    :Type, null: false
      t.string  :FirstName, null: false
      t.string  :MI
      t.string  :LastName, null: false
      t.integer :FishingClubID, foreign_key: true
      t.text    :CreateDt
      t.text    :LastUpdateDt

      t.timestamps null: false
    end
  end
end

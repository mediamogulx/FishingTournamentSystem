class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.integer :FishID
      t.integer :TournamentID, null: false
      t.integer :AnglerID, null: false
      t.integer :CategoryID, null: false
      t.integer :PrizeID
      t.string  :Name
      t.text    :Description
      t.integer :PhotoID
      t.text    :CreateDt
      t.text    :LastUpdateDt

      t.timestamps null: false
    end
  end
end

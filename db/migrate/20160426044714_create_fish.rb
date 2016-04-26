class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.integer :FishID, primary_key: true
      t.integer :TournamentID, foreign_key: true, null: false
      t.integer :AnglerID, foreign_key: true, null: false
      t.integer :CategoryID, foreign_key: true, null: false
      t.integer :PrizeID, foreign_key: true
      t.string  :Name
      t.text    :Description
      t.integer :PhotoID, foreign_key: true
      t.text    :CreateDt
      t.text    :LastUpdateDt

      t.timestamps null: false
    end
  end
end

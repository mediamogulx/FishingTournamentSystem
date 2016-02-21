class CreateCategory < ActiveRecord::Migration
  def change
    create_table :Category do |t|
      t.integer :CategoryID, primary_key: true
      t.integer :TournamentID, foreign_key: true, null: false
      t.integer :AnglerID, foreign_key: true
      t.integer :PrizeID, foreign_key: true
      t.integer :FishID, foreign_key: true
      t.string  :Name
      t.text    :Description
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

class CreatePrize < ActiveRecord::Migration
  def change
    create_table :Prize do |t|
      t.integer :PrizeID, primary_key: true
      t.integer :TournamentID, foreign_key: true, null: false
      t.integer :AnglerID, foreign_key: true
      t.integer :CategoryID, foreign_key: true
      t.text    :Type
      t.text    :Description
      t.integer :PhotoID, foreign_key: true
      t.text    :CreateDt
      t.text    :LastUpdateDt

      t.timestamps null: false
    end
  end
end

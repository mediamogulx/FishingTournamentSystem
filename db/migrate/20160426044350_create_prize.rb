class CreatePrize < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.integer :PrizeID
      t.integer :TournamentID, null: false
      t.integer :AnglerID
      t.integer :CategoryID
      t.text    :Type
      t.text    :Description
      t.integer :PhotoID
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

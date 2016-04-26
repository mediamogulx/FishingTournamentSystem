class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :CategoryID
      t.integer :TournamentID, null: false
      t.integer :AnglerID
      t.integer :PrizeID
      t.integer :FishID
      t.string  :Name
      t.text    :Description
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

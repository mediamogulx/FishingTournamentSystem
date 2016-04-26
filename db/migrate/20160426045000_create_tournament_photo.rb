class CreateTournamentPhoto < ActiveRecord::Migration
  def change
    create_table :tournament_photos do |t|
      t.integer :TournamentID, null: false
      t.integer :PhotoID, null: false
    end
  end
end

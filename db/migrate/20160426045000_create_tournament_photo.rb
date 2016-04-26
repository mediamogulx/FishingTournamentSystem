class CreateTournamentPhoto < ActiveRecord::Migration
  def change
    create_table :tournament_photos do |t|
      t.integer :TournamentID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

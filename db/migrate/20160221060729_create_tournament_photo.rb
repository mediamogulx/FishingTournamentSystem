class CreateTournamentPhoto < ActiveRecord::Migration
  def change
    create_table :TournamentPhoto do |t|
      t.integer :TournamentID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

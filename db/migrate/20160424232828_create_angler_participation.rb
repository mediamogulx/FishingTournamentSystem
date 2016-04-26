class CreateAnglerParticipation < ActiveRecord::Migration
  def change
    create_table :angler_participations do |t|
      t.integer :TournamentID, null: false
      t.integer :AnglerID, null: false
    end
  end
end

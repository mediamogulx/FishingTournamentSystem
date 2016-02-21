class CreateSponsorParticipation < ActiveRecord::Migration
  def change
    create_table :SponsorParticipation do |t|
      t.integer :SponsorID, foreign_key: true, null: false
      t.integer :TournamentID, foreign_key: true, null: false
    end
  end
end

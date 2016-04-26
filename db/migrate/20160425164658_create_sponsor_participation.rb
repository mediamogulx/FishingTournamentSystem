class CreateSponsorParticipation < ActiveRecord::Migration
  def change
    create_table :sponsor_participations do |t|
      t.integer :SponsorID, null: false
      t.integer :TournamentID, null: false
    end
  end
end

class CreateTournament < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.integer :TournamentID, index: true
      t.text    :Name, null: false
      t.text    :Description
      t.text    :StartDt, null: false
      t.text    :EndDt, null: false
      t.text    :CaptainsMeetingDt
      t.string  :CaptainsMeetingLoc
      t.string  :EntryFee, null: false
      t.integer :BeneficiaryID
      t.integer :OrganizerID
      t.string  :WeighInLoc
      t.string  :BanquetLoc
      t.text    :BanquetStartDt
      t.text    :BanquentEndDt
      t.text    :RainDt
      t.text    :CreateDt
      t.text    :LastUpdateDt

      t.timestamps null: false
    end
  end
end

class CreateSponsor < ActiveRecord::Migration
  def change
    create_table :Sponsor do |t|
      t.integer :SponsorID, primary_key: true
      t.string  :Type
      t.string  :Name, null: false
      t.text    :Description
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

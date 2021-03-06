class CreateSponsor < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :SponsorID
      t.string  :Type
      t.string  :Name, null: false
      t.text    :Description
      t.text    :Website
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

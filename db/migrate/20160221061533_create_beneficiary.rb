class CreateBeneficiary < ActiveRecord::Migration
  def change
    create_table :Beneficiary do |t|
      t.integer :BeneficiaryID, foreign_key: true
      t.string  :Name, null: false
      t.text    :Description
      t.text    :Website
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

class CreateBeneficiary < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.integer :BeneficiaryID
      t.string  :Name, null: false
      t.text    :Description
      t.text    :Website
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

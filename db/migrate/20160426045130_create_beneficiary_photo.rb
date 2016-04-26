class CreateBeneficiaryPhoto < ActiveRecord::Migration
  def change
    create_table :beneficiary_photos do |t|
      t.integer :BeneficiaryID, null: false
      t.integer :PhotoID, null: false
    end
  end
end

class CreateBeneficiaryPhoto < ActiveRecord::Migration
  def change
    create_table :beneficiary_photos do |t|
      t.integer :BeneficiaryID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

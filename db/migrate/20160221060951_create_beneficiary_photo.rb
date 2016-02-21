class CreateBeneficiaryPhoto < ActiveRecord::Migration
  def change
    create_table :BeneficiaryPhoto do |t|
      t.integer :BeneficiaryID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

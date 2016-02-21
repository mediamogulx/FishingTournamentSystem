class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :Photo do |t|
      t.integer :PhotoID, primary_key: true
      t.binary  :Photo, null: false
      t.text    :Description
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

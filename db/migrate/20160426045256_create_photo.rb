class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :PhotoID
      t.binary  :Photo, null: false
      t.text    :Description
      t.text    :CreateDt
      t.text    :LastUpdateDt
    end
  end
end

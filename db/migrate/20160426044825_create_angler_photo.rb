class CreateAnglerPhoto < ActiveRecord::Migration
  def change
    create_table :angler_photos do |t|
      t.integer :AnglerID, foreign_key: true, null: false
      t.integer :PhotoID, foreign_key: true, null: false
    end
  end
end

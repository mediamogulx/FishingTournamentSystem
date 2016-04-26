class CreateAnglerPhoto < ActiveRecord::Migration
  def change
    create_table :angler_photos do |t|
      t.integer :AnglerID, null: false
      t.integer :PhotoID, null: false
    end
  end
end

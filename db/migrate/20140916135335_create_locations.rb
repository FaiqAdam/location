class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :name
    	t.string :ancestry
    	t.integer :ancestry_depth, default: 0


      t.timestamps
    end
  end
end

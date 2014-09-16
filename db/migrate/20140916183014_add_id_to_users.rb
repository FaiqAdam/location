class AddIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :city_id, :integer
  	add_column :users, :area_id, :integer
  end
end

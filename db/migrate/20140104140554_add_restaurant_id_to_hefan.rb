class AddRestaurantIdToHefan < ActiveRecord::Migration
  def change
    add_column :hefans, :restaurant_id, :integer
  end
end

class CreateHefans < ActiveRecord::Migration
  def change
    create_table :hefans do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :photo

      t.timestamps
    end
  end
end

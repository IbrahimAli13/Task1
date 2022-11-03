class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand_name
      t.integer :model
      t.string :color

      t.timestamps
    end
  end
end

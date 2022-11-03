class CreateCarinfos < ActiveRecord::Migration[7.0]
  def change
    create_table :carinfos do |t|
      t.integer :car_id
      t.string :plate
      t.string :owner

      t.timestamps
    end
  end
end

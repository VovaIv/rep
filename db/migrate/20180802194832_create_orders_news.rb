class CreateOrdersNews < ActiveRecord::Migration[5.2]
  def change
    create_table :hzs do |t|
      t.string :name
      t.string :num
      t.integer :hz
      t.string :client

      t.timestamps
    end
  end
end
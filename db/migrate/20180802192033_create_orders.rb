class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :num
      t.string :client
      t.string :string
      t.string :date
      t.string :timedate

      t.timestamps
    end
  end
end

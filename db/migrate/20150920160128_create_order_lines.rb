class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :qty, default: 1
      t.float :unit_price, default: 0.0
      t.float :total_price, default: 0.0

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_no
      t.float :total, default: 0.0
      t.date :date

      t.timestamps
    end
  end
end

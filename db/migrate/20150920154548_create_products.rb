class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :name
      t.float :price, default: 0.0
      t.integer :status, default: 1

      t.timestamps
    end
  end
end

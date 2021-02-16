class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.integer :customer_id, null: false
      t.integer :item_id, null: false
      t.integer :amount, null: false
      t.timestamps :created_at, null: false
      t.timestamps :updated_at, null: false
    end
  end
end

class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      
      t.integer :order_id, null: false
      t.integer :item_id, null: false
      t.integer :amount, null: false
      t.integer :price, null: false
      t.integer :production_status, null: false
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    
    end
  end
end

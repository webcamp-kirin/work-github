class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      t.integer :customer_id, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :address_name, null: false
      t.integer :postage, null: false
      t.integer :payment, null: false
      t.integer :order_status, null: false
      t.integer :total_payment, null: false
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false

    end
  end
end

class CreateShippings < ActiveRecord::Migration[5.0]
  def change
    create_table :shippings do |t|
    
    t.integer :customer_id,	null: false
    t.string :name,	null: false
    t.string :postal_code, null: false
    t.string :address, null: false
    t.timestamp :created_at, null: false
    t.timestamp :updated_at, null: false
    
    end
  end
end

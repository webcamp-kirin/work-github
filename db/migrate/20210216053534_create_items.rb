class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.string :image_id, null: false
      t.boolean :is_active, null: false, default: true
      t.timestamps :created_at, null: false
      t.timestamps :updated_at, null: false
    end
  end
end

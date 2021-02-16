class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :name, null: false
      t.timestamps :created_at, null: false
      t.timestamps :updated_at, null: false
    end
  end
end

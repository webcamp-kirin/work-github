class ChangeColumnToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :is_active, :boolean, default: true
  end
end

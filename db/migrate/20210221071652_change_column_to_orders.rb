class ChangeColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :payment, :integer, default: 0
  end
end

class AddPhoneNumberToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :phone_number, :string
  end
end

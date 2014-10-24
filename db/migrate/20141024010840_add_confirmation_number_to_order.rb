class AddConfirmationNumberToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :confirmation_number, :integer
  end
end

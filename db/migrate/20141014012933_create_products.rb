class CreateProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
    end
  end
end

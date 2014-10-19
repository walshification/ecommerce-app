class AddPhotosToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :photo
    end
  end
end

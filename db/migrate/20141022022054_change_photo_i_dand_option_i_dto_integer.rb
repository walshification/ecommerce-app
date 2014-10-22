class ChangePhotoIDandOptionIDtoInteger < ActiveRecord::Migration
  def change
    change_column :photos, :product_id, :integer
    change_column :options, :product_id, :integer
  end
end

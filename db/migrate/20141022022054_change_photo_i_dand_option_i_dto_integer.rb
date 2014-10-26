class ChangePhotoIDandOptionIDtoInteger < ActiveRecord::Migration
  def change
    change_column :photos, :product_id, 'integer USING CAST("product_id" AS integer)'
    change_column :options, :product_id, 'integer USING CAST("product_id" AS integer)'
  end
end

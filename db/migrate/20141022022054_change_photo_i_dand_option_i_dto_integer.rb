class ChangePhotoIDandOptionIDtoInteger < ActiveRecord::Migration
  def change
    change_column :photos, :product_id, 'integer USING CAST("column_to_change" AS integer)'
    change_column :options, :product_id, 'integer USING CAST("column_to_change" AS integer)'
  end
end

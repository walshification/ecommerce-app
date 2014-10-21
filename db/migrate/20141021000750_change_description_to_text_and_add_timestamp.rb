class ChangeDescriptionToTextAndAddTimestamp < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :description, :text

      t.timestamp
    end
  end
end

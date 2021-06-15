class RemoveImageFromStores < ActiveRecord::Migration[5.0]
  def change
    remove_column :stores, :image, :string
  end
end

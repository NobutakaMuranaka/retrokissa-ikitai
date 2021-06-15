class AddPictureToStores < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :picture, :string
  end
end

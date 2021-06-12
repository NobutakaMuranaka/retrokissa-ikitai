class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :adress
      t.text :business_hours
      t.string :regular_holiday
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

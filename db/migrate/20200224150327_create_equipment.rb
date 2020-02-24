class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.references :user, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.string :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end

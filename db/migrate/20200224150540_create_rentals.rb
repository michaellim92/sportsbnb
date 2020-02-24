class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end

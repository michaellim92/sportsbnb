class AddLocationToGears < ActiveRecord::Migration[6.0]
  def change
    add_column :gears, :location, :string
  end
end

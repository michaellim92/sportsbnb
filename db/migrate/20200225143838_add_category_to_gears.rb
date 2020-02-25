class AddCategoryToGears < ActiveRecord::Migration[6.0]
  def change
    add_column :gears, :category, :string
  end
end

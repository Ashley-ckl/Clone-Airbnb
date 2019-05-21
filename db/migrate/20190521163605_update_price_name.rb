class UpdatePriceName < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :price, :price_per_hour
  end
end

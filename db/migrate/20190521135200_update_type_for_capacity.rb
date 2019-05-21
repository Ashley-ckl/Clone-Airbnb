class UpdateTypeForCapacity < ActiveRecord::Migration[5.2]
  def change
    change_column :spaces, :capacity, :string
  end
end

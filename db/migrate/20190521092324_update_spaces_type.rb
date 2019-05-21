class UpdateSpacesType < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :type, :space_type
  end
end

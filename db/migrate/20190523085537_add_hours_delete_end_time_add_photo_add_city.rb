class AddHoursDeleteEndTimeAddPhotoAddCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :end_date
    add_column :bookings, :hours, :integer
    add_column :users, :avatar, :string
    add_column :users, :city, :string
  end
end

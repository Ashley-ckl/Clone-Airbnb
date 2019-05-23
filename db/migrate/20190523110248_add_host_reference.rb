class AddHostReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :host
  end
end

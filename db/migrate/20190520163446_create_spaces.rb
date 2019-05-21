class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.references :user, foreign_key: true
      t.integer :capacity
      t.integer :price
      t.text :amenities
      t.text :description
      t.string :name
      t.string :type
      t.string :location

      t.timestamps
    end
  end
end

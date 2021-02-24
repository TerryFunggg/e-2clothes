class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :city, index: true, foreign_key: true, null: false
      t.string :street_address, null: false
      t.string :secondary_address, null: false
      t.string :building_address, null: false
      t.string :zip_code, null: false

      t.timestamps
    end
  end
end

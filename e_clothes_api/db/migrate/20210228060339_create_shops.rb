class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.belongs_to :address, null: false, foreign_key: true
      t.string :logo
      t.string :title
      t.text :description
      t.integer :apply_state
      t.boolean :is_active

      t.timestamps
    end
  end
end
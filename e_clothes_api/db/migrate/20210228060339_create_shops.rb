class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.belongs_to :address, null: false, foreign_key: true
      t.string :logo
      t.string :title
      t.text :description
      t.integer :apply_state, default: 0
      t.boolean :is_active, default: false

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :shop, null: false, foreign_key: true
      t.string :name
      t.string :price
      t.text :description
      t.string :quality

      t.timestamps
    end
  end
end

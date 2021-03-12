class CreateProductCategroys < ActiveRecord::Migration[6.1]
  def change
    create_table :product_categroys do |t|
      t.references :categroy, null: true, foreign_key: true
      t.references :product, null: true, foreign_key: true

      t.timestamps
    end
  end
end

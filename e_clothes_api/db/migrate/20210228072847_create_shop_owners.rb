class CreateShopOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_owners do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :shop, null: false, foreign_key: true
      t.integer :apply_state

      t.timestamps
    end
  end
end

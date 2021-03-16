class AddProductToCarts < ActiveRecord::Migration[6.1]
  def change
    add_reference :carts, :product, foreign_key: true
  end
end

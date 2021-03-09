class AddCartToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :cart, foreign_key: true
  end
end

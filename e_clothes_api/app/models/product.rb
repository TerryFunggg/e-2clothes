class Product < ApplicationRecord
  belongs_to :shop

  has_many :product_categroys
  has_many :categroys, through: :product_categroys

  has_many :cart_products
  has_many :carts, through: :cart_products
end

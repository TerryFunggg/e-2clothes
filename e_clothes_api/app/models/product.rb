class Product < ApplicationRecord
  belongs_to :shop
  has_many :product_categroys
  has_many :categroys, through: :product_categroys
  has_many :carts
end

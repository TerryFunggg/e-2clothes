class Categroy < ApplicationRecord
  has_many :product_categroys
  has_many :products, through: :product_categroys
end

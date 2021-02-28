class User < ApplicationRecord
  belongs_to :address, optional: true
  has_one :admin
  has_many :shop_owners
  has_many :shops, through: :shop_owners
end

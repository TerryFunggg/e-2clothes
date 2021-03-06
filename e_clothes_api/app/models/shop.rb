class Shop < ApplicationRecord
  belongs_to :address
  has_many    :shop_owners
  has_many    :users, through: :shop_owners
  enum state: { opening: 0, close: 1 }
end

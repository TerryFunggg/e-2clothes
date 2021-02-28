class ShopOwner < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  enum apply_state: { no_apply: 0, applying: 1, failure: 2, verified: 3 }
end

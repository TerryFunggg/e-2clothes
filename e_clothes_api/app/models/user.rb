class User < ApplicationRecord
  belongs_to :address, optional: true
  has_one :admin
end

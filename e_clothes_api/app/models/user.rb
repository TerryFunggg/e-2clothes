class User < ApplicationRecord
  belongs_to :address, optional: true
end

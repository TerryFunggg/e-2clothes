class Admin < ApplicationRecord
  belongs_to :user

  enum premission: { full: 0, mid: 1 }
end

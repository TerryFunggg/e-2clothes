class Address < ApplicationRecord
  belongs_to :city
  has_one  :users
  has_one  :shops

  validates :street_address, length: { minimum: 10 }, allow_blank: true
end

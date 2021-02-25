class Address < ApplicationRecord
  belongs_to :city

  validates :street_address, length: { minimum: 10 }, allow_blank: true
end

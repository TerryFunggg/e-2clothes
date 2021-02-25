class Address < ApplicationRecord
  belongs_to :city
  has_many  :users

  validates :street_address, length: { minimum: 10 }, allow_blank: true
end

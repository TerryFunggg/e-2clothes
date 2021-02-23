class Address < ApplicationRecord
  belongs_to :city

  validates :city_id, presence: true
end

module Mutations
class CreateAddress < BaseMutation
  argument :attributes, Types::AddressAttributes, required: true

  field :errors,    Types::ValidationErrorsType, null: true
  field :address,   Types::AddressType, null: true

  def resolve(attributes:)
    address = create(attributes.to_h)
    if address.save
      { address: address }
    else
      { errors: address.errors }
    end
  end

  def create(city:, street_address:, secondary_address:, building_address:, zip_code:)
    City.create(name: city) if City.where(name: city).empty?
    city = City.find_by(name: city)
    Address.new(
        street_address:     street_address,
        secondary_address:  secondary_address,
        building_address:   building_address,
        zip_code:           zip_code,
        city_id:            city.id)
  end
end
end

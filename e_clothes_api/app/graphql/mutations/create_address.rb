module Mutations
class CreateAddress < BaseMutation

  argument :street_address,     String, required: true
  argument :secondary_address,  String, required: true
  argument :building_address,   String, required: true
  argument :zip_code,           String, required: true
  argument :city,               String, required: true

  field :errors,    [String],           null: false
  field :address,   Types::AddressType, null: false

  def resolve(city:, street_address:, secondary_address:, building_address:, zip_code:)
    City.create(name: city) if City.where(name: city).empty?
    city = City.find_by(name: city)
    address = Address.new(
        street_address:     street_address,
        secondary_address:  secondary_address,
        building_address:   building_address,
        zip_code:           zip_code,
        city_id:            city.id)

    if address.save
      { address: address }
    else
      { errors: address.errors.full_messages }
    end
  end
end
end

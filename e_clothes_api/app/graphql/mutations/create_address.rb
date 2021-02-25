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

  def create(address)
    if City.where(name: address[:city]).empty?
      city = City.new(name: city)
      city.save
    else
      city = City.find_by(name: address[:city])
    end
      address[:city] = city
      Address.new(address)
  end
end
end

module Types
  class AddressAttributes < Types::BaseInputObject
  description "Attributes for creating or updating an user"

    argument :street_address,     String, required: true
    argument :secondary_address,  String, required: true
    argument :building_address,   String, required: true
    argument :zip_code,           String, required: true
    argument :city,               String, required: true
  end
end

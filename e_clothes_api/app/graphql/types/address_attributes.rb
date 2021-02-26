module Types
  class AddressAttributes < Types::BaseInputObject
    description 'Attributes for creating or updating an user'

    %i[street_address secondary_address building_address zip_code city].each do |item|
      argument item, String, required: true
    end

  end
end

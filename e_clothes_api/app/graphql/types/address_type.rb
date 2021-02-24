module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: false
    field :city_id, Integer, null: false
    field :street_address, String, null: false
    field :secondary_address, String, null: false
    field :building_address, String, null: false
    field :zip_code, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

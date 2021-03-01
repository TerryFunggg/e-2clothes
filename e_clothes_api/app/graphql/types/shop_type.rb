module Types
  class ShopType < Types::BaseObject
    field :id, ID, null: false
    field :address, Types::AddressType, null: true
    field :users, [Types::UserType], null: true
    field :logo, String, null: true
    field :title, String, null: false
    field :description, String, null: true
    field :apply_state, Integer, null: true
    field :is_active, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

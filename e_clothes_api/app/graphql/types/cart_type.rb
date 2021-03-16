module Types
  class CartType < Types::BaseObject
    field :id, ID, null: false
    field :user, Types::Users::UserType, null: false
    field :product, Types::Products::ProductType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

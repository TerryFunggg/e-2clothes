module Types
  module Products
    class CategroyType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :is_active, Boolean, null: true
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end

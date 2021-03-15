module Types
  module Products
    class ProductType < Types::BaseObject
      field :id, ID, null: false
      field :shop_id, Integer, null: false
      field :name, String, null: true
      field :price, String, null: true
      field :description, String, null: true
      field :quality, String, null: true
      field :categroys, [Types::Products::CategroyType], null: true
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end

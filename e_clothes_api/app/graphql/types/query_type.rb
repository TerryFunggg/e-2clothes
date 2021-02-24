module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # /address
    field :addresses, [Types::AddressType], null: false

    def addresses
      Address.all
    end

    field :address, Types::AddressType, null: false do
      argument :id, ID, required: true
    end

    def address(id:)
      Address.find(id)
    end
  end
end

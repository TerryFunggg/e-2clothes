module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # /address
    field :addresses, [Types::AddressType], null: false

    field :address, Types::AddressType, null: false do
      argument :id, ID, required: true
    end

    # /user
    field :users, [Types::UserType], null: false

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end



    def addresses
      Address.all
    end

    def address(id:)
      Address.find(id)
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
  end
end

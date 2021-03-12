module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # /address
    field :addresses, [Types::AddressType], description: "Return a list of address", null: false
    field :address, Types::AddressType, description: "Get address by ID", null: false do
      argument :id, ID, required: true
    end

    def addresses
      Address.all
    end

    def address(id:)
      Address.find(id)
    end

    # /user
    field :users, [Types::UserType], description: "Return a list of User", null: false
    field :user, Types::UserType, description: "Get User by ID", null: false do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end

    # /shop
    field :shops, [Types::ShopType], null: false, description: "Return a list of shops"
    field :shop,  Types::ShopType, null: false, description: "Return a shop object" do
      argument :id, ID, required: true
    end

    def shop(id:)
      # Shop.select("shops.*,users.*").joins(:users).find_by('shop_owners.user_id = ?', 21)
      Shop.find(id)
    end

    def shops
      Shop.all
    end

  end
end

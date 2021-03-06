module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # TODO: Refector

    # /address
    field :addresses, [Types::Address::AddressType], description: "Return a list of address", null: false
    field :address, Types::Address::AddressType, description: "Get address by ID", null: false do
      argument :id, ID, required: true
    end

    # /user
    field :users, [Types::Users::UserType], description: "Return a list of User", null: false
    field :user, Types::Users::UserType, description: "Get User by ID", null: false do
      argument :id, ID, required: true
    end

    # /shop
    field :shops, [Types::ShopType], null: false, description: "Return a list of shops"
    field :shop,  Types::ShopType, null: false, description: "Return a shop object" do
      argument :id, ID, required: true
    end

    # /category
    field :categroys, [Types::Products::CategroyType], null: false, description: "Return a list of category"
    field :categroy,  Types::Products::CategroyType, null: false, description: "Return a category list"  do
      argument :id, ID, required: true
    end

    # /Product
    field :products, [Types::Products::ProductType], null: false, description: "Return a list of Product"
    field :product,  Types::Products::ProductType, null: false, description: "Return a product by id" do
      argument :id, ID, required: true
    end

    # /Order
    field :carts, [Types::CartType], null: false, description: "Return a list of cart"
    field :cart,  Types::CartType, null: false, description: "Return a carts by id" do
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


    def shop(id:)
      # Shop.select("shops.*,users.*").joins(:users).find_by('shop_owners.user_id = ?', 21)
      Shop.find(id)
    end

    def shops
      Shop.all
    end

    def categroys
      Categroy.all
    end

    def categroy(id:)
      Categroy.find(id)
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end


    def carts
      Cart.all
    end

    def cart(id:)
      Cart.find(id)
    end

  end
end

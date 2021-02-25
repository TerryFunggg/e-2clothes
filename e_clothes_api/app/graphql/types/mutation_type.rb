module Types
  class MutationType < Types::BaseObject
    field :create_address, mutation: Mutations::CreateAddress, description: "Create an address"
    field :create_user,    mutation: Mutations::CreateUser,    description: "Create an User"
  end
end

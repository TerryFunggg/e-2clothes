module Types
  class MutationType < Types::BaseObject
    field :create_address, mutation: Mutations::CreateAddress
  end
end

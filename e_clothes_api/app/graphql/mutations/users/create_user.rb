module Mutations
  module Users
    class CreateUser < BaseMutation
      argument :user, Types::Users::UserAttributes, required: true
      argument :address, Types::Address::AddressAttributes, required: false

      field :user,    Types::Users::UserType, null: true
      field :errors,  Types::ValidationErrorsType, null: true

      def resolve(user:, address: {})
        user = User.new(user.to_h)
        user.address = create_address(address.to_h) unless address.empty?

        if user.save
          { user: user }
        else
          { errors: user.errors }
        end
      end

      def create_address(address)
        # TODO Error handling
        address = CreateAddress.create(address)
        address.save
        address
      end
    end
  end
end

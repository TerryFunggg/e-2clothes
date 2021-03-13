module Types
  module Users
    class UserType < Types::BaseObject
      %i[first_name last_name email password].each do |item|
        field item, String, null: false
      end

      %i[avator phone].each do |item|
        field item, String, null: true
      end

      field :id, ID, null: false
      field :address,     Types::AddressType, null: true
      field :is_active,   Boolean, null: true
      field :last_login,  GraphQL::Types::ISO8601DateTime, null: true
      field :created_at,  GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at,  GraphQL::Types::ISO8601DateTime, null: false

      field :full_name, String, null: true
      def full_name
        "#{object.first_name} #{object.last_name}"
      end
    end
  end
end

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    field :password, String, null: false
    field :avator, String, null: true
    field :phone, String, null: false
    field :address, Types::AddressType, null: true
    field :is_active, Boolean, null: true
    field :last_login, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :full_name, String, null: true


    def full_name
        "#{object.first_name} #{object.last_name}"
    end
  end
end

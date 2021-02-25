module Types
  class UserAttributes < Types::BaseInputObject
    description "Attributes for creating or updating an user"

    argument :first_name,         String, required: true
    argument :last_name,          String, required: true
    argument :email,              String, required: true
    argument :password,           String, required: true
    argument :avator,             String, required: false
    argument :phone,              String, required: false

  end
end

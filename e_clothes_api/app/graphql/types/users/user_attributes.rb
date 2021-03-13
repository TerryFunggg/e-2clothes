module Types
  module Users
    class UserAttributes < Types::BaseInputObject
      description 'Attributes for creating or updating an user'

      %i[first_name last_name email password].each do |item|
        argument item, String, required: true
      end

      %i[avator phone].each do |item|
        argument item, String, required: false
      end
    end
  end
end

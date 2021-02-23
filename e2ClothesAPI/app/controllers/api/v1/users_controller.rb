module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]
      # TODO: IF is_active = 0 (false), it should not be show
      def index
        @user = User.all
        json_response @user
      end

      def show
        json_response @user
      end

      def create
        @user = User.create!(user_params)
        json_response @user, :created
      end

      def update
        @user.update!(user_params)
        head :no_content
      end

      # TODO: This function should be controlled by admin
      # It need to check the auth key
      def destroy
        @user.is_active = false
        @user.save!
        head :no_content
      end

      private

      def set_user
         @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
      end
    end
  end
end

module Api
  module V1
    class UsersController < ApplicationController
      # TODO: IF is_active = 0 (false), it should not be show
      def index
        user = User.all
        render json: { status: 'SUCCESS', message: 'Loaded User', data: user }, status: :ok
      end

      def show
        user = User.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Show User', data: user }, status: :ok
      end

      def create
        user = User.new(user_params)

        if user.save
          render json: { status: 'SUCCESS', message: 'Create the user', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Can\'t create the User', data: user.errors }, status: :unprocessable_entity
        end
      end

      def update
        user = User.find(params[:id])

        if user.update(user_params)
          render json: { status: 'SUCCESS', message: 'Update the user', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Can\'t update the User', data: user.errors }, status: :unprocessable_entity
        end
      end

      # TODO: This function should be controlled by admin
      # It need to check the auth key
      def destroy
        user = User.find(params[:id])
        user.is_active = false

        if user.save
          render json: { status: 'SUCCESS', message: 'Delete the user', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Can\'t delete the User', data: user.errors }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
      end
    end
  end
end

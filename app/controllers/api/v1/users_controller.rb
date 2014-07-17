module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]

      def index
        @users = User.all
        render json: @users, status: 200
      end

      def show
        render json: @user, status: 200
      end

      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: 201, location: api_v1_user_url(@user[:id])
        else
          render json: @user.errors, status: 422
        end
      end

      def update
        if @user.update(user_params)
          render json: @user, status: 200
        else
          render json: @user.errors, status: 422
        end
      end

      def destroy
        @user.destroy
        head 204
      end
      
      private

        def set_user
          @user = User.find(params[:id])
        end

        def user_params
          params.require(:user).permit(:name, :email)
        end
    end
  end
end
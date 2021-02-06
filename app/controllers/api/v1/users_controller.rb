class Api::V1::UsersController < ApplicationController

    def index
        @users = User.allocate
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        user = User.create!(user_params)
        render json: user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private 

    def user_params
        params.require(:name, :username, :password)
    end

end
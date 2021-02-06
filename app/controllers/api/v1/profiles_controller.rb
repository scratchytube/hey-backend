class Api::V1::ProfilesController < ApplicationController
    # before_action :set_profile, only: [:show, :update, :delete]

    # I dont think we need this. COmmented out for now
    def index
        @profiles = Profile.all 
        render json: @profiles
    end

    def show
       @profile = Profile.find(params[:id])
        render json: @profile
    end

    # Do we need this??
    # def new
    #     @profile = Profile.new
    #     render json: @profile
    # end

    def create
        profile = Profile.create!(profile_params)
        render json: profile 
    end

    def update
        @profile = Profile.find(params[:id])
        @profile.update(profile_params)
        render json: @profile
    end

    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy
    end

    private

    def profile_params
        params.permit(:user_id, :bio_id, :picture_id)
    end

    # def set_profile
    #     @profile = Profile.find(params[:id])
    # end

end
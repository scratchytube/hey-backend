class Api::V1::PicturesController < ApplicationController

    def index
        @pictures = Picture.all
        render json: @pictures
    end

    def show
        @picture = Picture.find(params[:id])
        render json: @picture
    end

    def create
        picture = Picture.create!(picture_params)
        render json: picture
    end

    def update
        @picture = Picture.find(params[:id])
        @picture.update(picture_params)
        render json: @picture
    end

    def destroy
        @picture = Picture.find(params[:id])
        @picture.destroy 
    end

    private

    def picture_params
        params.require(:templates, :completed_pictures)
    end

end
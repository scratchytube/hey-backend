class Api::V1::BiosController < ApplicationController

    def index
        @bios = Bio.all 
        render json: @bios
    end

    def show
        @bio = Bio.find(params[:id])
        render json: @bio
    end

    def create
        bio = Bio.create!(bio_params)
        render json: bio
    end

    def update
        @bio = Bio.find(params[:id])
        @bio.update(bio_params)
        render json: @bio
    end

    def destroy
        @bio = Bio.find(params[:id])
        @bio.destroy 
    end

    private

    def bio_params
        params.require(:typeOfPrompt, :snippets)
    end

end
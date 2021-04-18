class WinesController < ApplicationController
    def index
        @wines = Wine.all
        render json: @wines
    end

    def show
        @wine = Wine.find(params[:id])
        render json: @wine
    end

    def create
        @wine = Wine.create(
            wine_name: params[:wine_name],
            wine_description: params[:wine_description],
        )
        render json: @wine
    end

    def update
        @wine = Wine.find(params[:id])
        @wine.update(
            wine_name: params[:wine_name],
            wine_description: params[:wine_description],
        )
        render json: @wine
    end

    def destroy
        @wines = Wine.all
        @wine = Wine.find(params[:id])
        @wine.destroy
        render json: @wines
    end
end
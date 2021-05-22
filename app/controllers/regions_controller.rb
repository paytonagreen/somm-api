class RegionsController < ApplicationController
    def index
        @regions_wines = RegionsWine.all
        render json: @regions_wines
    end

    def show
        @regions_wine = RegionsWine.find(params[:id])
        render json: @regions_wine
    end

    def create
        @region = Region.find(params[:region_id])
        @wine = Wine.find(params[:wine_id])
        @region.wines << @wine
        render json: @region.wines
    end

    def update
    end

    def destroy
        @regions_wines = RegionsWine.all
        @regions_wine = Wine.find(params[:id])
        @regions_wine.destroy
        render json: @regions_wines
    end
end

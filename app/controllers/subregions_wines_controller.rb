class SubregionsWinesController < ApplicationController
    def index
        @subregions_wines = SubregionsWine.all
        render json: @subregions_wines
    end

    def show
        @subregions_wine = SubregionsWine.find(params[:id])
        render json: @subregions_wine
    end

    def create
        @subregion = Subregion.find(params[:subregion_id])
        @wine = Wine.find(params[:wine_id])
        @subregion.wines << @wine
        render json: @subregion.wines
    end

    def update
    end

    def destroy
        @subregions_wines = SubregionsWine.all
        @subregions_wine = Wine.find(params[:id])
        @subregions_wine.destroy
        render json: @subregions_wines
    end
end

class GrapesWinesController < ApplicationController
    def index
        @grapes_wines = ProteinsGrape.all
        render json: @grapes_wines
    end

    def show
        @grapes_wine = GrapesWine.find(params[:id])
        render json: @proteins_grape
    end

    def create
        @wine = Wine.find(params[:wine_id])
        @grape = Grape.find(params[:grape_id])
        @wine.grapes << @grape
        render json: @wine.grapes
    end

    def update
    end

    def destroy
        @grapes_wines = Grapeswine.all
        @grapes_wine = Grape.find(params[:id])
        @grapes_wine.destroy
        render json: @grapes_wines
    end
end

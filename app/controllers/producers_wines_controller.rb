class ProducersWinesController < ApplicationController
    def index
        @producers_wines = ProducersWine.all
        render json: @producers_wines
    end

    def show
        @producers_wine = ProducersWine.find(params[:id])
        render json: @producers_wine
    end

    def create
        @protein = Protein.find(params[:protein_id])
        @wine = Wine.find(params[:wine_id])
        @protein.wines << @wine
        render json: @protein.wines
    end

    def update
    end

    def destroy
        @producers_wines = ProducersWine.all
        @producers_wine = Wine.find(params[:id])
        @producers_wine.destroy
        render json: @producers_wines
    end
end
 
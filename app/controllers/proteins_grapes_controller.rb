class ProteinsGrapesController < ApplicationController
    def index
        @proteins_grapes = ProteinsGrape.all
        render json: @proteins_grapes
    end

    def show
        @proteins_grape = ProteinsGrape.find(params[:id])
        render json: @proteins_grape
    end

    def create
        @protein = Protein.find(params[:protein_id])
        @grape = Grape.find(params[:grape_id])
        @protein.grapes << @grape
        render json: @protein.grapes
    end

    def update
    end

    def destroy
        @proteins_grapes = ProteinsGrape.all
        @proteins_grape = Grape.find(params[:id])
        @proteins_grape.destroy
        render json: @proteins_grapes
    end
end

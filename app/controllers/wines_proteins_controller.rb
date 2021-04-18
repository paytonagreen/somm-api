class WinesProteinsController < ApplicationController
    def index
        @wines_proteins = WinesProtein.all
        render json: @wines
    end

    def show
        @wines_protein = WineProtein.find(params[:id])
        render json: @wines_protein
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
        @wines_proteins = WinesProteins.all
        @wines_protein = Wine.find(params[:id])
        @wines_protein.destroy
        render json: @wines_proteins
    end
end

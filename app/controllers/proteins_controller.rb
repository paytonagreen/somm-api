class ProteinsController < ApplicationController
    def index
        @proteins = Protein.all
        render json: @proteins
    end

    def show
        @protein = Protein.find(params[:id])
        render json: @protein
    end

    def show_wines
        @protein = Protein.find(params[:protein_id])
        render json: @protein.wines
    end

    def create
        @Protein = Protein.create(
            protein_name: params[:protein_name]
        )
        render json: @protein
    end

    def update
        @protein = Protein.find(params[:id])
        @protein.update(
            protein_name: params[:protein_name]
        )
        render json: @protein
    end

    def destroy
        @proteins = Protein.all
        @protein = Protein.find(params[:id])
        render json: @proteins
        @protein.destroy
    end
end

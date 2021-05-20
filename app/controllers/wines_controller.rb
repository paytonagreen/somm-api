class WinesController < ApplicationController
    def index
        @wines = Wine.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            wines: @wines,
            total_pages: @wines.total_pages,
            total_entries: @wines.total_entries
        }
    end

    def show
        @wine = Wine.find(params[:id])
        render json: @wine
    end
    
    def show_grapes
        @wine = Wine.find(params[:wine_id])
        render json: @wine.grapes
    end

    def create
        @wine = Wine.create(
            name: params[:name],
            description: params[:description],
        )
        render json: @wine
    end

    def update
        @wine = Wine.find(params[:id])
        @wine.update(
            name: params[:name],
            description: params[:description],
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
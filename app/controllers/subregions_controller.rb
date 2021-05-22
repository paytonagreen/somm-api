class SubsubregionsController < ApplicationController
    def index
        @subregions = Subregion.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            subregions: @subregions,
            total_pages: @subregions.total_pages,
            total_entries: @subregions.total_entries
    }
    end

    def show
        @subregion = Subregion.find(params[:id])
        render json: @subregion
    end

    def show_wines
        @subregion = Subregion.find(params[:region_id])
        render json: @subregion.wines
    end
    
    def show_grapes
        @subregion = Subregion.find(params[:region_id])
        render json: @subregion.grapes
    end

    def create
        @subregion = Subregion.create(
            name: params[:name]
        )
        render json: @subregion
    end

    def update
        @subregion = Subregion.find(params[:id])
        @subregion.update(
            name: params[:name]
        )
        render json: @subregion
    end

    def destroy
        @subregions = Subregion.all
        @subregion = Subregion.find(params[:id])
        render json: @subregions
        @subregion.destroy
    end
end

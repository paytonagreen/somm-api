class RegionsController < ApplicationController
    def index
        @regions = Region.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            regions: @regions,
            total_pages: @regions.total_pages,
            total_entries: @regions.total_entries
    }
    end

    def show
        @region = Region.find(params[:id])
        render json: @region
    end

    def show_wines
        @region = Region.find(params[:region_id])
        render json: @region.wines
    end
    
    def show_grapes
        @region = Region.find(params[:region_id])
        render json: @region.grapes
    end

    def create
        @region = Region.create(
            name: params[:name]
        )
        render json: @region
    end

    def update
        @region = Region.find(params[:id])
        @region.update(
            name: params[:name]
        )
        render json: @region
    end

    def destroy
        @regions = Region.all
        @region = Region.find(params[:id])
        render json: @regions
        @region.destroy
    end
end

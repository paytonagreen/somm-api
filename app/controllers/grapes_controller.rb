class GrapesController < ApplicationController
    def index
        @grapes = Grape.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            grapes: @grapes,
            total_pages: @grapes.total_pages,
            total_entries: @grapes.total_entries
        }
    end

    def show
        @grape = Grape.find(params[:id])
        render json: @grape
    end

    def create
        @grape = Grape.create(
            name: params[:name],
            description: params[:description],
        )
        render json: @grape
    end

    def update
        @grape = Grape.find(params[:id])
        @grape.update(
            name: params[:name],
            description: params[:description],
        )
        render json: @grape
    end

    def destroy
        @grapes = Grape.all
        @grape = Grape.find(params[:id])
        @grape.destroy
        render json: @grapes
    end
end

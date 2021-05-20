class SaucesController < ApplicationController
    def index
        @sauces = Sauce.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            sauces: @sauces,
            total_pages: @sauces.total_pages,
            total_entries: @sauces.total_entries
        }
    end

    def show
        @sauce = Sauce.find(params[:id])
        render json: @sauce
    end

    def show_wines
        @sauce = Sauce.find(params[:sauce_id])
        render json: @sauce.wines
    end

    def create
        params.each do |key,value|
            Rails.logger.warn "Param #{key}: #{value}"
        end
        @sauce = Sauce.create(
            name: params[:name]
        )
        render json: @sauce
    end

    def update
        @sauce = Sauce.find(params[:id])
        @sauce.update(
            name: params[:name]
        )
        render json: @sauce
    end

    def destroy
        @sauces = Sauce.all
        @sauce = Sauce.find(params[:id])
        render json: @sauces
        @sauce.destroy
    end
end

class SaucesController < ApplicationController
    def index
        @sauces = Sauce.all
        render json: @sauces
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
            sauce_name: params[:sauce_name]
        )
        render json: @sauce
    end

    def update
        @sauce = Sauce.find(params[:id])
        @sauce.update(
            sauce_name: params[:sauce_name]
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

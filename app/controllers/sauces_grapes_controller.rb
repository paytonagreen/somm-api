class SaucesGrapesController < ApplicationController
    def index
        @sauces_grapes = SaucesGrape.all
        render json: @sauces_grapes
    end

    def show
        @proteins_grape = ProteinGrape.find(params[:id])
        render json: @proteins_grape
    end

    def create
        @sauce = Sauce.find(params[:sauce_id])
        @grape = Grape.find(params[:grape_id])
        @sauce.grapes << @grape
        render json: @sauce.grapes
    end

    def update
    end

    def destroy
        @sauces_grapes = SaucesGrape.all
        @sauces_grape = Grape.find(params[:id])
        @sauces_grape.destroy
        render json: @sauces_grapes
    end
end

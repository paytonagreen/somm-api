class WinesSaucesController < ApplicationController
    def index
        @wines_sauces = WinesSauce.all
        render json: @wines_sauces
    end

    def show
        @wines_sauce = WineSauce.find(params[:id])
        render json: @wines_sauce
    end

    def create
        @sauce = Sauce.find(params[:sauce_id])
        @wine = Wine.find(params[:wine_id])
        @sauce.wines << @wine
        render json: @sauce.wines
    end

    def update
    end

    def destroy
        @wines_sauces = WinesSauces.all
        @wines_sauce = Wine.find(params[:id])
        @wines_sauce.destroy
        render json: @wines_sauces
    end
end

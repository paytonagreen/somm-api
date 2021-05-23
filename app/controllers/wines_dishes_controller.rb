class WinesDishesController < ApplicationController
    def index
        @wines_dishes = WinesDish.all
        render json: @wines_dishes
    end

    def show
        @wines_dish = WineDish.find(params[:id])
        render json: @wines_dish
    end

    def create
        @dish = Dish.find(params[:dish_id])
        @wine = Wine.find(params[:wine_id])
        @dish.wines << @wine
        render json: @dish.wines
    end

    def update
    end

    def destroy
        @wines_dishes = WinesDishes.all
        @wines_dish = Wine.find(params[:id])
        @wines_dish.destroy
        render json: @wines_dishs
    end
end

class DishesController < ApplicationController
    def index
        @dishes = Dish.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            dishes: @dishes,
            total_pages: @dishes.total_pages,
            total_entries: @dishes.total_entries
    }
    end

    def show
        @dish = Dish.find(params[:id])
        render json: @dish
    end

    def show_wines
        @dish = Dish.find(params[:dish_id])
        render json: @dish.wines
    end
    
    def show_grapes
        @dish = Dish.find(params[:dish_id])
        render json: @dish.grapes
    end

    def create
        @dish = Dish.create(
            name: params[:name],
            description: params[:description]
        )
        render json: @dish
    end

    def update
        @dish = Dish.find(params[:id])
        @dish.update(
            name: params[:name],
            description: params[:description]
        )
        render json: @dish
    end

    def destroy
        @dishes = Dish.all
        @dish = Dish.find(params[:id])
        render json: @dishes
        @dish.destroy
    end
end

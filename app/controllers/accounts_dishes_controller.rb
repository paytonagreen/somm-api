class AccountsDishesController < ApplicationController
    def index
        @accounts_dishes = AccountsDishes.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            dishes: @accounts_dishes,
            total_pages: @accounts_dishes.total_pages,
            total_entries: @accounts_dishes.total_entries
        }
    end

    def show
        @accounts_dish = AccountDish.find(params[:id])
        render json: @dishes_protein
    end

    def create
        @account = Account.find(params[:account_id])
        @dish = Dish.find(params[:dish_id])
        @account.dishes << @dish
        render json: @account.dishes
    end

    def update
    end

    def destroy
        @accounts_dishes = DishesProteins.all
        @accounts_dish = Dish.find(params[:id])
        @accounts_dish.destroy
        render json: @accounts_dishs
    end
end

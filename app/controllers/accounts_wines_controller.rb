class AccountsWinesController < ApplicationController
    def index
        @accounts_wines = AccountsWines.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            wines: @accounts_wines,
            total_pages: @accounts_wines.total_pages,
            total_entries: @accounts_wines.total_entries
        }
    end

    def show
        @accounts_wine = AccountWine.find(params[:id])
        render json: @wines_protein
    end

    def create
        @account = Account.find(params[:account_id])
        @wine = Wine.find(params[:wine_id])
        @account.wines << @wine
        render json: @account.wines
    end

    def update
    end

    def destroy
        @accounts_wines = WinesProteins.all
        @accounts_wine = Wine.find(params[:id])
        @accounts_wine.destroy
        render json: @accounts_wines
    end
end
 
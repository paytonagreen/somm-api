class AccountsGrapesController < ApplicationController
    def index
        @accounts_grapes = AccountsGrapes.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            grapes: @accounts_grapes,
            total_pages: @accounts_grapes.total_pages,
            total_entries: @accounts_grapes.total_entries
        }
    end

    def show
        @accounts_grape = AccountGrape.find(params[:id])
        render json: @grapes_protein
    end

    def create
        @account = Account.find(params[:account_id])
        @grape = Grape.find(params[:grape_id])
        @account.grapes << @grape
        render json: @account.grapes
    end

    def update
    end

    def destroy
        @accounts_grapes = GrapesProteins.all
        @accounts_grape = Grape.find(params[:id])
        @accounts_grape.destroy
        render json: @accounts_grapes
    end
end

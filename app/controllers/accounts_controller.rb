class AccountsController < ApplicationController
    def index 
        @accounts = Account.all
        render json: @accounts
    end

    def show
        @account = Account.find(params[:id])
        render json: @account
    end

    def show_wines
        @account = Account.find(params[:account_id])
        @account_wines = @account.wines.paginate(page: params[:page], per_page: params[:per_page]).order('name')
        render json: {
            wines: @account_wines,
            total_pages: @account_wines.total_pages,
            total_entries: @account_wines.total_entries
        }
    end

    def create
        @account = Account.create(name: params[:name])
        @user = User.new(username: params[:username], account_id: @account.id, email: params[:email], password:params[:password], password_confirmation: params[:password_confirmation], is_admin: true)
        if @user.save
            login!
            render json: {
                status: :created,
                account: @account,
                user: @user
            }
        else
            render json: {
                status: 500,
                errors: @user.errors.full_messages
            }
        end
    end

    def update
        @account = Account.find(params[:id])
        @account.update(name: params[:name])
        render json: @account
    end

    def destroy
        @accounts = Account.all
        @account = Account.find(params[:id])
        @account.destroy
        render json: @accounts
    end

    private

        def user_params
            params.require(:user).permit(:username, :is_admin, :email, :password, :password_confirmation, :is_admin, :account_id)
        end
end

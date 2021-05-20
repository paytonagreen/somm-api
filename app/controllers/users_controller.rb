class UsersController < ApplicationController

    def index
        @users = User.all 
            if @users
                render json: {
                    users: @users
                }
            else
                render json: {
                    status: 500,
                    errors: ['no users found']
                }
            end
    end

    def show
        @user = User.find(params[:id])
            if @user
                render json: {
                    user: @user
                }
            else
                render json: {
                    status: 500,
                    errors: ['user not found']
                }
            end
    end

    def create
        @user = User.new(user_params)
            if @user.save
                login!
                render json: {
                    status: :created,
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
        if logged_in? && current_user
            @user = User.find(params[:id])
            @user.update(
                is_admin: params[:is_admin]
            )
            render json: @user
        end
    end

    def destroy
        if logged_in? && current_user
            @users = User.all
            @user = User.find(params[:id])
            @user.destroy
            render json = @users
        end
    end

    private

        def user_params
            params.require(:user).permit(:username, :is_admin, :email, :password, :password_confirmation, :is_admin, :account_id)
        end
end
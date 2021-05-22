class PasswordsController < ApplicationController
    def forgot
        if params[:email].blank?
            return render json: {error: 'No email present'}
        end

        @user = User.find_by(email: params[:email])
        if @user.present?
            @user.generate_password_token!
            UserMailer.with(email: params[:email], token: @user.reset_password_token).reset_password_email.deliver_now
            render json: {status: 'ok'}, status: :ok
        else
            render json: {error: ['Email address not found. Please try again.']}, status: :not_found
        end
    end

    def reset
        token = params[:token].to_s

        if params[:token].blank?
            return render json: {error: 'Token not present'}
        end

        user = User.find_by(reset_password_token: token)

        if user.present? && user.password_token_valid?
            if user.reset_password!(params[:password])
                render json: {status: 'ok'}, status: :ok
            else
                render json: {error: user.errors.full_messages}, status: :unprocessable_entity
            end
        else
            render json: {error: ['Link not valid or expired. Try resetting password again.']}, status: :not_found
        end
    end
end

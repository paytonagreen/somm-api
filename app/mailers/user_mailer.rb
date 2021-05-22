class UserMailer < ApplicationMailer
    default from: 'notifications@asommforyou.com'

    def welcome_email
        @user = params[:user]
        @url = 'https://asommforyou.com/signIn'
        mail(to: @user.email, subject: 'Welcome to A Somm For You')
    end

    def reset_password_email
        @email = params[:email]
        @token = params[:token]
        if Rails.env.production?
            @url = "https://asommforyou.com/resetPassword?token=#{@token}"
        else
            @url = "http://localhost:3000/resetPassword?token=#{@token}"
        end
        mail(to: @email, subject: 'A Somm For You: Reset Password')
    end
end

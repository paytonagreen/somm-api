class UserMailer < ApplicationMailer
    default from: 'notifications@asommforyou.com'

    def welcome_email
        @user = params[:user]
        @url = 'https://asommmforyou.com/signIn'
        mail(to: @user.email, subject: 'Welcome to A Somm For You')
    end

    def reset_password_email
        @email = params[:user]
        @token = params[:token]
        @url = "https://asommforyou.com/resetPassword?token=#{@token}"
        mail(to: @email, subject: 'A Somm For You: Reset Password')
    end
end

# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def welcome_email
       UserMailer.with(user: User.find(1)).welcome_email
    end

    def reset_password_email
        UserMailer.with(user: User.find(1), token: '234234').reset_password_email
    end
end

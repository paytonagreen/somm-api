class AccountsDish < ApplicationRecord
    has_many :accounts_dishes
    has many :accounts through: :accounts_dishes
end

class AccountsDish < ApplicationRecord
    has_many :accounts_dishes
    has_many :accounts through: :accounts_dishes
end

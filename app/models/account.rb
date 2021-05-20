class Account < ApplicationRecord
    has_many :accounts_wines
    has_many :wines, through: :accounts_wines
    has_many :accounts_dishes
    has_many :dishes, through: :accounts_dishes
    has_many :users
end
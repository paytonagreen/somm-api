class AccountsDish < ApplicationRecord
    belongs_to :account
    belongs_to :dish
end

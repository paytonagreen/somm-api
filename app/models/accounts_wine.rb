class AccountsWine < ApplicationRecord
    belongs_to :wine
    belongs_to :account
end

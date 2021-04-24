class Sauce < ApplicationRecord
    has_many :wines_sauces
    has_many :wines, through: :wines_sauces
end

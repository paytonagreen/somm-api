class Sauce < ApplicationRecord
    has_many :wines_sauces
    has_many :wines, through: :wines_sauces
    has_many :sauces_grapes
    has_many :grapes, through: :sauces_grapes
end

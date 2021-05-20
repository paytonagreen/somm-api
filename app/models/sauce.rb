class Sauce < ApplicationRecord
    has_many :wines_sauces
    has_many :wines, through: :wines_sauces
    has_many :sauces_grapes
    has many :sauces, through: :sauces_grapes
end

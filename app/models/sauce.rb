class Sauce < ApplicationRecord
    has_many :wines_sauces
    has many :wines through: :wines_sauces
end

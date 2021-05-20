class Wine < ApplicationRecord
    has_many :wines_proteins
    has_many :proteins, through: :wines_proteins
    has_many :wines_sauces
    has_many :sauces, through: :wines_sauces
    has_many :grapes_wines
    has_many :grapes, through: :grapes_wines
end

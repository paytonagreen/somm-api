class Wine < ApplicationRecord
    has_many :wines_proteins
    has_many :proteins, through: :wines_proteins
    has_many :wines_sauces
    has_many :sauces, through: :wines_sauces
    has_many :grapes_wines
    has_many :grapes, through: :grapes_wines
    has_many :producers_wines
    has_many :wines, through: :producers_wines
    has_many :countries_wines
    has_many :wines, through: :countries_wines
    has_many :regions_wines
    has_many :wines, through: :regions_wines
    has_many :subregions_wines
    has_many :wines, through: :subregions_wines
end

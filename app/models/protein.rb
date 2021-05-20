class Protein < ApplicationRecord
    has_many :wines_proteins
    has_many :wines, through: :wines_proteins
    has_many :proteins_grapes
    has_many :grapes, through: :proteins_grapes
end

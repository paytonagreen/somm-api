class Protein < ApplicationRecord
    has_many :wines_proteins
    has_many :wines, through: :wines_proteins
end

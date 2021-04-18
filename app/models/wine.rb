class Wine < ApplicationRecord
    has_many :wines_proteins
    has_many :proteins, through: :wines_proteins
end

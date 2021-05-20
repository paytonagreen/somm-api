class Grape < ApplicationRecord
    has_many :proteins_grapes
    has_many :proteins, through: :proteins_grapes
    has_many :grapes_wines
    has_many :wines, through: :grapes_wines
end
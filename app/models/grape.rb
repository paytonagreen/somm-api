class Grape < ApplicationRecord
    has_many :proteins_grapes
    has_many :proteins, through: :proteins_grapes

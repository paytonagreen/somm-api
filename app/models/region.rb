class Region < ApplicationRecord
    belongs_to :country
    has_many :subregions
    has_many :regions_wines
    has_many :wines, through: :regions_wines
end

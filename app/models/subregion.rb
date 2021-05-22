class Subregion < ApplicationRecord
    belongs_to :region
    has_many :subregions_wines
    has_many :wines, through: :subregions_wines
end

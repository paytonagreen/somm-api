class CountriesWine < ApplicationRecord
    belongs_to :wine
    belongs_to :country
end

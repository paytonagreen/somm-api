class RegionsWine < ApplicationRecord
    belongs_to :region
    belongs_to :wine
end

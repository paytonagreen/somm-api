class WinesDish < ApplicationRecord
    belongs_to :wine
    belongs_to :dish
end

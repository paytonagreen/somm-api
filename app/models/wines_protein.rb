class WinesProtein < ApplicationRecord
    belongs_to :wine
    belongs_to :protein
end

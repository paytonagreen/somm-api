class ProducersWine < ApplicationRecord
    belongs_to :wine
    belongs_to :producer
end

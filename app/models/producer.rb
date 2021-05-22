class Producer < ApplicationRecord
    has_many :producers_wines
    has_many :wines, through: :producers_wines
end

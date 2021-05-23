class Dish < ApplicationRecord
    has_many :wines_dishes
    has_many :wines, through: :wines_dishes
end

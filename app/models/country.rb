class Country < ApplicationRecord
    has_many :regions
    has_many :countries_wines
    has_many :wines, through: :countries_wines
end

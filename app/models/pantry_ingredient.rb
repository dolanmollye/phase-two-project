class PantryIngredient < ApplicationRecord
    belongs_to :ingredients
    belongs_to :pantry
end

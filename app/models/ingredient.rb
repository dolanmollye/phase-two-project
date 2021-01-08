class Ingredient < ApplicationRecord
    has_many :pantry_ingredients
    has_many :pantries, through: :pantry_ingredients

    validates :quantity, numericality: {greater_than: 0, message: ": %{value} needs to be in numeric form"}

    # def self.highest_quantity
    #     Ingredient.all.sort{|item| item.quantity}.count
    #   end
end

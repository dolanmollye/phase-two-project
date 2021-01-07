class PantryIngredientsController < ApplicationController
    
    def new
    @pantry_ingredient = PantryIngredient.new
    @pantrys = Pantry.all 
    @ingredients = Ingredient.all
    end
    
end

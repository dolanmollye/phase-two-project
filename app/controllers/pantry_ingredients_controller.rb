class PantryIngredientsController < ApplicationController
    
    def new
    @pantry_ingredient = PantryIngredient.new
    @pantries = Pantry.all 
    @ingredients = Ingredient.all
    end

    def show
        @pantry_ingredient = PantryIngredient.find(params[:id])
    end

    def create
        @pantry_ingredient = PantryIngredient.create(pantry_ingredient_params)
        redirect_to pantry_path(@pantry_ingredient.pantry_id)
    end

    private

    def pantry_ingredient_params
        params.require(:pantry_ingredient).permit(:ingredient_id, :pantry_id)
    end
    
end

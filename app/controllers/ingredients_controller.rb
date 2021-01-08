class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
        @ingredient = Ingredient.new
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def create
        @ingredient = Ingredient.create(ingredient_params)
    
        if @ingredient.valid?
            redirect_to @ingredient
        else
            flash[:error_message] = @ingredient.errors.full_messages
            redirect_to @ingredient
        end
    end

    def edit
        @artist = Artist.find(params[:id])
    end 

    def update
        @ingredient = Ingredient.find(params[:id])
        @ingredient.update(ingredient_params)
        redirect_to @ingredient
    end 

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity)
    end
end

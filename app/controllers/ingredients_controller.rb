class IngredientsController < ApplicationController
    def index
        @ingredients = ingredients.all
    end
end

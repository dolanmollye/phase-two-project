class ShoppingListsController < ApplicationController
    def index
        @shopping_lists = ShoppingList.all
        @shopping_list = ShoppingList.new
    end

    def show
        @shopping_list = ShoppingList.find(params[:id])
    end

    def create
        @shopping_list = ShoppingList.create(shopping_list_params)
            redirect_to @shopping_list
    end

    def edit
        @shopping_lists = ShoppingList.find(params[:id])
    end 

    def update
        @shopping_list = ShoppingList.find(params[:id])
        @shoppinglist.update(shopping_list_params)
        redirect_to @shopping_list
    end 

    private

    def shopping_list_params
         params.require(:shopping_list).permit(:name)
    end
end
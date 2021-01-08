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
        @shopping_list = ShoppingList.find(params[:id])
    end 

    def update
        @shopping_list = ShoppingList.find(params[:id])
        @shopping_list.update(shopping_list_params)
        redirect_to @shopping_list
    end 

    def destroy
        @shopping_list = ShoppingList.find(params[:id])
        @shopping_list.destroy
        redirect_to @shopping_list
    end

    private

    def shopping_list_params
         params.require(:shopping_list).permit(:name)
    end 
end
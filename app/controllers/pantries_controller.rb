class PantriesController < ApplicationController
    def index
        @pantries = Pantry.all
      end
    
      def new
        @pantry = Pantry.new
      end
    
      def show
        @pantry = Pantry.find(params[:id])
      end
end

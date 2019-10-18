class CheesesController < ApplicationController
    def index
        @cheeses = Cheese.all
    end
    
    def show
        @cheese = Cheese.find_by(id: params[:id])
    end
end

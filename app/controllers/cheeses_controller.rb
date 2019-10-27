class CheesesController < ApplicationController
    def index
        @cheeses = Cheese.all
    end
    
    def show
        @cheese = Cheese.find_by(id: params[:id])
    end

    def new
        @cheese = Cheese.new
    end

    def create
        p params
        @cheese = Cheese.new(cheese_params)
        if @cheese.save
            redirect_to cheese_path(@cheese)
        else
            @errors = @cheese.errors.full_messages
            render :new
        end
    end

    private
    def cheese_params
        params.require(:cheese).permit(:name, :creamery, :origin, :rind, :notes, :rating, :milk, :texture)
    end

end

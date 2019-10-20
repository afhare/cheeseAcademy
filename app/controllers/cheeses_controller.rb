class CheesesController < ApplicationController
    def index
        @cheeses = Cheese.all
    end
    
    def show
        @cheese = Cheese.find_by(id: params[:id])
        cheese_flavors = @cheese.flavors.map do |flav|
            flav.kind
        end
        others = Flavor.all.select do |flav|
            if !cheese_flavors.include?(flav.kind)
                flav.kind
            end
        end
        @other_flavors = others.map do |other|
            other.kind
        end

    end
end

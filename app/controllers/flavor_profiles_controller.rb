class FlavorProfilesController < ApplicationController
    def new
        p params
        @cheese = Cheese.find_by(id: params[:id])
        @flavors = Flavor.all 
        @profile = FlavorProfile.new
    end

    def create
        p params
        @cheese = Cheese.find_by(id: profile_params[:cheese_id])
        @profile = FlavorProfile.new(cheese_id: @cheese.id)
        profile_params[:flavor_id].each do |flavor|
            profile_flavor = Flavor.find_by(id: flavor)
            if profile_flavor
                profile = FlavorProfile.create(cheese_id: @cheese.id, flavor_id: profile_flavor.id)   
            end
        end
        redirect_to cheese_path(@cheese)
    end

    def edit
        p params
        @cheese = Cheese.find_by(id: params[:id])
        @flavors = Flavor.all 
        @profile = FlavorProfile.find_by(cheese_id: params[:id])
    end

    private

    # def cheese_params
    #     params.require()
    # end

    def profile_params
        params.require(:flavor_profile).permit(:cheese_id, flavor_id: [])
    end
end

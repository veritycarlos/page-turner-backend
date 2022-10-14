require 'pry' #can I put this in application controller, then it will be available to both books andreades?

class PlacesController < ApplicationController

    get '/places' do
        Place.all.to_json(include: :attractions)
    end

    get '/places/:id' do
        find_place
        place_to_json
    end 

    post "/places" do
        @place = place.new(params)
        if @place.save
            place_to_json
        else
            place_error_msgs
        end 
    end

    patch "/places/:id" do
        find_place
        if @place.update(params)
            place_to_json
        else 
            place_error_msgs
        end
    end

    delete "/places/:id" do
        find_place
        if @place
            @place.destroy
            @place.to_json
        else 
            {errors: ["Place Doesn't Exist"]}.to_json
        end 
    end

    private
        def find_place
            @place = place.find_by(params["id"])
        end 

        def place_to_json
            @place.to_json(include: [:attractions])
        end 

        def place_error_msgs
            {errors: @place.errors.full_messages}.to_json
        end
        
end
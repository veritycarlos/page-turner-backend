class AttractionsController < ApplicationController
    #ev
    get '/attractions' do
        Attraction.all.to_json(include: [:place])
    end
    # Attraction.all.to_json(include: [place: {only: [:id, name]}])

    #all attractions by a specific place:
    get "/places/:place_id/attractions" do 

    end 

    get '/attractions/:id' do
        find_attraction
        attraction_to_json
    end

    post "/places/:place_id/attractions" do
        @place = place.find_by_id(params["place_id"])
        @attraction = @place.attractions.build(params)
        if @attraction.save
            attraction_to_json
        else
            attraction_error_msgs
        end 
    end 

    patch "/attractions/:id" do
        find_attraction
        if @attraction.update(params)
            attraction_to_json
        else 
            attraction_error_msgs
        end
    end

    delete "/attractions/:id" do
        find_attraction
        if @attraction
            @attraction.destroy
            @attraction.to_json
        else 
            {errors: ["Attraction Doesn't Exist"]}.to_json
        end 
    end

    private
        def find_attraction
            @attraction = attraction.find_by(params["id"])
        end 

        def attraction_to_json
            @attraction.to_json(include: [:place])
        end 

        def attraction_error_msgs
            {errors: @attraction.errors.full_messages}.to_json
        end
end
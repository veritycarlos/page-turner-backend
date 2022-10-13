require 'pry' #can I put this in application controller, then it will be available to both books andreades?

class ReadersController < ApplicationController

    get '/readers' do
        Reader.all.to_json(include: :books)
    end

    get '/readers/:id' do
        find_reader
        reader_to_json
    end 

    post "/readers" do
        @reader = Reader.new(params)
        if @reader.save
            reader_to_json
        else
            reader_error_msgs
        end 
    end

    patch "/readers/:id" do
        find_reader
        if @reader.update(params)
            reader_to_json
        else 
            reader_error_msgs
        end
    end

    delete "/readers/:id" do
        find_reader
        if @reader
            @reader.destroy
            @reader.to_json
        else 
            {errors: ["Reader Doesn't Exist"]}.to_json
        end 
    end

    private
        def find_reader
            @reader = Reader.find_by(params["id"])
        end 

        def reader_to_json
            @reader.to_json(include: [:books])
        end 

        def reader_error_msgs
            {errors: @reader.errors.full_messages}.to_json
        end
    end 

end
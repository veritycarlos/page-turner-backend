require 'pry'

class ReadersController < ApplicationController
    # readers index route
    get '/readers' do
        readers = Reader.all
        readers.to_json(include: :books)
    end

    #Readers Show route
    get '/readers/:id' do
        reader = Reader.find_by(id: params[:id])
        reader.to_json(include: :books)
    end

end
class ReadersController < ApplicationController
    # readers index route
    get '/readers' do
        readers = Reader.all
        readers.to_json
    end
end
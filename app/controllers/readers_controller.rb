require 'pry' #can I put this in application controller, then it will be available to both books andreades?

class ReadersController < ApplicationController
    # readers index route
    # render all the readers as JSON
    # endpoint to grab readers, endpoints, unless wer're updatiing data is get
    # could also do Reader.all.to_json(include: [:books])
    # to exlude some of the info from readers on the api, you could do ....to_json(include: [:books], except: [:updated_at :created_at])
    # to exlude some of the info from books (or any other related object) on the api, you could do ....to_json(include: [:books {except: [:updated_at, :created_at]}])
    # to only include certain info you can use only inplace of except, this will just do the inverse of exclude. 
    # include is for including methods(books is a method), only and except are for attributes.
    get '/readers' do
        readers = Reader.all
        readers.to_json(include: :books)
    end

    ##en1------------
    # params: before when we would use inputes like the values and we were creating those objecst to send to json server and strigifying the json to send there, those were perams we were sending to server
    #anytime you have  a fetch request and your making a post request and you have that body, that body is the params that you're sending back. 
    # creating data is a post request creating a new reader
    #now if you send a post request in postman with http://localhost:9292/readers?name=Bob as the url, binding.pry will open up. you can type params and see name=bob
    # Reader.new(params) will make bob a new reader
    post "/readers" do
        
        reader = Reader.new(params)
        if reader.save
            #return object as json if saved
            reader.to_json(include: [:books])
        else
            #return error messages if not saved {hash}.to_json< converted to json
            {errors: reader.errors.full_messages}.to_json
        end 
    end 
    ##en1------------------------
    #patch if we're updating a record
    #delete if wer'e deleating a reacord
    #Readers Show route
    #restfull routes are the routs like get "/authors" returns bla, bla, bla those are the routes. they are more like a combo of the crud and the actual route path. 
    # crud create read update destroy is about the request like get, post, patch, delete
    # Could also do reader = Reader.find_by(id: params[:id]) find by works w/ both stirngs and int
    get '/readers/:id' do
        reader = Reader.find_by(params["id"])
    #     if reader 
            reader.to_json(include: :books)
    #     else 
    #         "404 - Reader not found"
    #     end 
    end

    patch "/readers/:id" do
        
        reader = Reader.find_by_id(params["id"])
        if reader.update(params)
            reader.to_json(include: [:books])
        else 
            {errors: reader.errors.full_messages}.to_json
        end
    end

    delete "/readers/:id" do
        reader = Reader.find_by_id(params["id"])
        if reader
            reader.destroy
            reader.to_json
        else 
            {errors: ["Reader Doesn't Exist"]}.to_json
        end 

    end

end
class BooksController < ApplicationController
    # index route
    get '/books' do
        books = Book.all
        books.to_json(include: [reader: {only: [:id, name]}])
    end
#ev
    get '/books/:id' do
        book = Book.find_by(params["id"])
    #     if reader 
            book.to_json(include: [:reader])
    #     else 
    #         "404 - Reader not found"
    #     end 
    end


        #post 'owners/:owner_id/books' do
            #reader = Reader.find_by(id: params[:reader_id])
            #dog = reader.books.create(params)
            #dog.to_json
        #end
#
    # post '/books' do
    #     book = Book.create(params)
    #     book.to_json
    # end 
#ev
    post "/books" do
        book = Book.new(params)
        if book.save
            book.to_json(include: [:reader])
        else
            {errors: book.errors.full_messages}.to_json
        end 
    end 
#
    # delete '/books/:id' do 
    #     book = Book.find_by(id: params[:id])
    #     book.destroy
    # end 
#
    # patch 'books/:id' do
    #     book = Book.find_by(id: params[:id])
    #     book.update(title: params[:title])
    #     book.to_json
    # end
#ev
    patch "/books/:id" do
        
        book = Book.find_by_id(params["id"])
        if book.update(params)
            book.to_json(include: [:reader])
        else 
            {errors: book.errors.full_messages}.to_json
        end
    end

    delete "/books/:id" do
        book = Book.find_by_id(params["id"])
        if book
            book.destroy
            book.to_json
        else 
            {errors: ["Book Doesn't Exist"]}.to_json
        end 

    end



end
class BooksController < ApplicationController
    # index route
    get '/books' do
        books = Book.all
        books.to_json
    end

        #post 'owners/:owner_id/books' do
            #reader = Reader.find_by(id: params[:reader_id])
            #dog = reader.books.create(params)
            #dog.to_json
        #end
#
    post '/books' do
        book = Book.create(params)
        dog.to_json
    end 
#
    delete '/books/:id' do 
        book = Book.find_by(id: params[:id])
        book.destroy
    end 
#
    patch 'books/:id' do
        book = Book.find_by(id: params[:id])
        book.update(title: params[:title])
        book.to_json
    end

end
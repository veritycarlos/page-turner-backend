class BooksController < ApplicationController
    #ev
    get '/books' do
        Book.all.to_json(include: [reader: {only: [:id, name]}])
    end

    get '/books/:id' do
        find_book
        book_to_json
    end

    post "/books" do
        @book = Book.new(params)
        if @book.save
            book_to_json
        else
            book_error_msgs
        end 
    end 

    patch "/books/:id" do
        find_book
        if @book.update(params)
            book_to_json
        else 
            book_error_msgs
        end
    end

    delete "/books/:id" do
        find_book
        if @book
            @book.destroy
            @book.to_json
        else 
            {errors: ["Book Doesn't Exist"]}.to_json
        end 
    end

    private
        def find_book
            @book = Book.find_by(params["id"])
        end 

        def book_to_json
            @book.to_json(include: [:reader])
        end 

        def book_error_msgs
            {errors: @book.errors.full_messages}.to_json
        end
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
end
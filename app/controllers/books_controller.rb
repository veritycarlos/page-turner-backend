class BooksController < ApplicationController
    # index route
    get '/books' do
        books = Book.all
        books.to_json
    end
end
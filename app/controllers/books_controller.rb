class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new(book_params)
  end

  def show
  end


  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)

  end

  def edit
  end


  private
  def book_params
    params.permit(:title, :body)

  end

end

class BooksController < ApplicationController

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author)
  end

  def index
    @books = Book.all

    render json: @books
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      head :no_content
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end
end

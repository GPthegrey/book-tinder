class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book
    else
      render :new
    end
  end

  def edit

  end

  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params

  end

  def find_book
    @book = Book.find(params[:id])
  end

end

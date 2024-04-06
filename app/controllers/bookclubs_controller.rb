class BookclubsController < ApplicationController

  before_action :find_bookclub, only: [:show, :edit, :update, :destroy]

  def index
    @bookclub = Bookclub.all
  end

  def show

  end

  def new
    @bookclub = Bookclub.new
  end

  def create
    bookclub = Bookclub.new(bookclub_params)
    if bookclub.save
      redirect_to bookclub
    else
      render :new
    end
  end

  def edit

  end

  def update
    @bookclub.update(bookclub_params)
  end

  def destroy
    @bookclub.destroy
    redirect_to bookclubs_path
  end

  private

  def bookclub_params

  end

  def find_bookclub
    @bookclub = Bookclub.find(params[:id])
  end



end

class MatchesController < ApplicationController
  before_action :find_match, only: [:show, :edit, :update, :destroy]

  def index
    @matchs = Match.all
  end

  def show

  end

  def my_matchs
    @matchs = Match.where(user: current_user)
  end

  def new
    @match = Match.new
  end

  def create
    match = Match.new(match_params)
    if match.save
      redirect_to match
    else
      render :new
    end
  end

  def edit

  end

  def update
    @match.update(match_params)
  end

  def cancel

  end

  private

  def match_params

  end

  def find_match
    @match = Match.find(params[:id])
  end

end

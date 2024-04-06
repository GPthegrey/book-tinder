class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]

  def index
    @event = Event.all
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)
    if event.save
      redirect_to event
    else
      render :new
    end
  end

  def edit

  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params

  end

  def find_event
    @event = Event.find(params[:id])
  end

end

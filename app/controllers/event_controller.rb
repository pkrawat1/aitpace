class EventController < ApplicationController
  def new
  end

  def show
    @event = Events.find(params[:format])
  end

  def edit
  end

  def update
  end

  def delete
  end

  def index
  end
end
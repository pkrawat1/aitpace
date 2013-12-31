class EventController < ApplicationController
  http_basic_authenticate_with name: "pankaj", password: "pkrawat", except: :show
  
  def new
  end

  def show
    @event = Events.find(params[:id])
  end

  def edit
    @event = Events.find(params[:id])
  end

  def update
    @event = Events.find(params[:id])
    if @event.update(params[:event].permit!)
      redirect_to event_path(params[:id])
    else
      render action: "edit"
    end
  end

  def delete
  end

  def index
  end
end

class AthleticsController < ApplicationController
  http_basic_authenticate_with name: User.first.name, password: User.first.password, except: :show

  def show
    @event = Athletics.find_by_name(params[:id])
  end

  def edit
    @event = Athletics.find(params[:id])
  end

  def update
    @event = Athletics.find(params[:id])
    if @event.update(params[:event].permit!)
      redirect_to athletic_path(@event.name)
    else
      render action: "edit"
    end
  end

  def delete
  end

  def index
  end
end

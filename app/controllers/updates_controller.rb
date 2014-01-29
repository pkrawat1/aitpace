class UpdatesController < ApplicationController
  http_basic_authenticate_with name: User.first.name, password: User.first.password,only: :pace_admin

  def new
    @update = Update.new
  end
  
  def create
    @update = Update.new(params[:update].permit!)

    if @update.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @update = Update.find(params[:id])
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(params[:update].permit!)
      redirect_to root_path
    end
  end

  def destroy
    @update = Update.find(params[:id])
    p params
    @update.destroy

    redirect_to  home_pace_admin_path
  end
end

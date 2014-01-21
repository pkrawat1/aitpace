class SecretoriesController < ApplicationController
  http_basic_authenticate_with name: User.first.name, password: User.first.password,only: :pace_admin

  def new
    @secretory = Secretory.new
  end
  
  def create
    @secretory = Secretory.new(params[:secretory].permit!)

    if @secretory.save
      redirect_to home_contact_path
    else
      render 'new'
    end
  end

  def edit
    @secretory = Secretory.find(params[:id])
  end

  def update
    @secretory = Secretory.find(params[:id])
    if @secretory.update(params[:secretory].permit!)
      redirect_to home_contact_path
    end
  end

  def destroy
    @secretory = Secretory.find(params[:id])
    p params
    @secretory.destroy

    redirect_to  home_pace_admin_path
  end

end

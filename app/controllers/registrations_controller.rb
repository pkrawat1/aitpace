class RegistrationsController < ApplicationController
  def new
    @team = Registrations.new
  end
  
  def create
    @team = Registrations.new(params[:team])
    if @team.save!
      redirect_to root
    else
      render action: new
    end
  end

  def index
  end
end

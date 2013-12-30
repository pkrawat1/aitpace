class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration].permit!)
    if @registration.save!
      redirect_to :root
    else
      render action: new
    end
  end
end

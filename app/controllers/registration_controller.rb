class RegistrationController < ApplicationController
  def new
    @register = Registrations.new
  end

  def create
    @register = Registrations.new(post_params)
    if @register.save!
      redirect_to root
    else
      render @register
    end
  end

  def index
    @registrations = Registrations.all
  end
end

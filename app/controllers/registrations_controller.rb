class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
    @event_names = []
    @events.select(:name).each{|x|  @event_names << x.name}
    @athletics.select(:name).each{|x|  @event_names << x.name}
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

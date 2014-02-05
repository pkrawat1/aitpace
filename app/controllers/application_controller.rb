class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter do
    @events = Events.all
    @updates = Update.all
    @athletics = Athletics.all
    @secretories = Secretory.all(:order => "rank ASC")
  end
end

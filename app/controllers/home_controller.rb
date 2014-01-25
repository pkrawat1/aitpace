class HomeController < ApplicationController
  http_basic_authenticate_with name: User.first.name, password: User.first.password,only: :pace_admin, :registrations
  def index
  end

  def pace_admin
  end

  def contact
  end
  
  def registrations
    @teams = Registration.all(order: :event)
  end

end

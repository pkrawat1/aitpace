class HomeController < ApplicationController
  http_basic_authenticate_with name: "pankaj", password: "pkrawat",only: :pace_admin
  def index
  end

  def pace_admin
  end

  def contact
  end
  
end

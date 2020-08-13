class PagesController < ApplicationController
  def home
    services = Service.all
    @top_3_services = services.sample(3)
  end

  def dashboard
    @user = current_user
    @services = @user.services
    @rents = @user.rents
  end
end

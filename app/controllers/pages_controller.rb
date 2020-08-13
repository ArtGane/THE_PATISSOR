class PagesController < ApplicationController
  def home
    @services = Service.all
  end

  def dashboard
    @user = current_user
    @services = @user.services
    @rents = @user.rents
  end
end

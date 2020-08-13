class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def create
    @service = Service.find(params[:service_id])
    @rent = Rent.new(rent_params)
    @rent.user = current_user
    @rent.service = @service
    @rent.save
    redirect_to dashboard_path
  end

  def new
    @rent = Rent.new
    @service = Service.find(params[:service_id])
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy

    redirect_to dashboard_path
  end

  private

  def rent_params
    params.require(:rent).permit(:service_name, :begin_date, :end_date)
  end
end

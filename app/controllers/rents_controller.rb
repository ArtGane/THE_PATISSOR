class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def create
    @service = Service.find(params[:service_id])
    @rent = Rent.new(rent_params)
    @rent.service = @service
    @rent.save
    redirect_to dashboard_path
  end

  def new
    @rent = Rent.new
    @service = Service.find(params[:service_id])
  end

  private

  def rent_params
    params.require(:rent).permit(:begin_date, :end_date)
  end
end

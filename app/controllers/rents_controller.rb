class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def create
    # @rent = Rent.new(rent_params)
    # @rent.service = current_service
    # @rent.save
    # redirect_to new_service_rent_path(@rent)

    @service = Service.find(params[:service_id])
    @rent = Rent.find(params[:name])
    @service.rents << @rent
    redirect_to new_service_rent_path(@service)
  end

  def new
    @rent = Rent.new
  end

  private

  def rent_params
    params.require(:rent).permit(:begin_date, :end_date)
  end
end

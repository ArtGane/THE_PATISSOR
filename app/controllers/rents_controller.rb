class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.save

    redirect_to new_service_rent_path
  end

  def new
    @rent = Rent.new
  end

  private

  def rent_params
    params.require(:rent).permit(:begin_date, :end_date)
  end
end

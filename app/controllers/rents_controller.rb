class RentsController < ApplicationController
  before_action :set_rent, only: [:create, :new]

  def index
    @rents = Rent.all
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.save

    redirect_to rent_path(@rent)
  end

  def new
    @rent = Rent.new
  end

  private

  def rent_params
    params.require(:rent).permit(:begin_date, :end_date)
  end
end

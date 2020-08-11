class ServicesController < ApplicationController
  before_action :set_service, only: [:create, :new, :update, :edit, :destroy]

  def index
    @services = Service.all
  end

  def create
    @service = Service.new(service_params)
    @service.save

    redirect_to service_path(@service)
  end

  def new
    @service = Service.new
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :localisation, :price_per_hour)
  end
end

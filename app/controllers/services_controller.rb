class ServicesController < ApplicationController
  before_action :set_service, only: [:update, :edit, :destroy]

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(service_params)
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    @service.save
    redirect_to service_path(@service)
  end

  def new
    @service = Service.new
  end

  def update
    @service = Service.find(service_params)
    @service.update(service_params)
    redirect_to service_path(@service)
  end

  def edit
    @service = Service.find(service_params)
  end

  def destroy
    @service = Service.find(service_params)
    @service.destroy

    redirect_to service_path(@service)
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :localisation, :price_per_hour)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end

class ServicesController < ApplicationController
  before_action :set_service, only: [:update, :edit, :destroy]

  def index
    @services = Service.all
    if params[:query].present?
      sql_query = " \
          name @@ :query \
          OR description @@ :query \
          OR localisation @@ :query \
        "
      @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
    end
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    @service.save
    redirect_to dashboard_path
  end

  def new
    @service = Service.new
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    redirect_to dashboard_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to dashboard_path
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :localisation, :price_per_hour)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end

class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show update destroy ]

  # GET /services
  def index
    @services = Service.all

    render json: @services, methods: [:image_url]
  end

  # GET /services/1
  def show
    render json: @service, methods: [:image_url]
  end

  # POST /services
  def create
    @service = Service.new(addService_params)

    if @service.save
      render json: @service, methods: [:image_url]
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(addService_params)
      render json: @service, methods: [:image_url]
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:name, :description, :price, :category_id, :image)
    end

    def addService_params
      params.permit(:name, :description, :price, :category_id, :image)
    end
end

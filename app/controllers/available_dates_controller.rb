class AvailableDatesController < ApplicationController
  before_action :set_available_date, only: %i[ show update destroy ]

  # GET /available_dates
  def index
    @available_dates = AvailableDate.all

    render json: @available_dates
  end

  # GET /available_dates/1
  def show
    render json: @available_date
  end

  # POST /available_dates
  def create
    @available_date = AvailableDate.new(avail_date_params)

    if @available_date.save
      render json: @available_date, status: :created, location: @available_date
    else
      render json: @available_date.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /available_dates/1
  def update
    if @available_date.update(avail_date_params)
      render json: @available_date
    else
      render json: @available_date.errors, status: :unprocessable_entity
    end
  end

  # DELETE /available_dates/1
  def destroy
    @available_date.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_date
      @available_date = AvailableDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def available_date_params
      params.require(:available_date).permit(:date, :service_id)
    end

    def avail_date_params
      params.permit(:date, :service_id)
    end
end

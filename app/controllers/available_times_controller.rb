class AvailableTimesController < ApplicationController
  before_action :set_available_time, only: %i[ show update destroy ]

  # GET /available_times
  def index
    @available_times = AvailableTime.all

    render json: @available_times
  end

  # GET /available_times/1
  def show
    render json: @available_time
  end

  # POST /available_times
  def create
    @available_time = AvailableTime.new(avail_time_params)

    if @available_time.save
      render json: @available_time, status: :created, location: @available_time
    else
      render json: @available_time.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /available_times/1
  def update
    if @available_time.update(avail_time_params)
      render json: @available_time
    else
      render json: @available_time.errors, status: :unprocessable_entity
    end
  end

  # DELETE /available_times/1
  def destroy
    @available_time.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_time
      @available_time = AvailableTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def available_time_params
      params.require(:available_time).permit(:time, :available_date_id, :service_id)
    end

    def avail_time_params
      params.permit(:time, :available_date_id, :service_id)
    end
end

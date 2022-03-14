class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show update destroy ]

  # GET /bookings
  def index
    @bookings = Booking.all

    render json: @bookings
  end

  # GET /bookings/1
  def show
    render json: @booking
  end

  # POST /bookings
  def create
    @booking = Booking.new(allBooking_params)

    if @booking.save
      render json: @booking, status: :created, location: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(allBooking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:booking_date, :status, :available_date_id, :available_time_id, :user_id, :service_id, :user_name, :date, :time, :service_name, :amount)
    end

    def allBooking_params
      params.permit(:booking_date, :status, :available_date_id, :available_time_id, :user_id, :service_id, :user_name, :date, :time, :service_name, :amount)
    end
end

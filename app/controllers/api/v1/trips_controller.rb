class Api::V1::TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @trips = current_user.trips

      render json: TripSerializer.new(@trips)
    else
      render json: {
        error: "You aren't logged in!!!"
      }
    end
  end

  def show
    render json: @trip
  end

  def create
    @trip = current_user.trips.build(trip_params)
      if @trip.save
        render json: TripSerializer.new(@trip), status: :created
      else
        error_resp = {
          error: @trip.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
  end

  def update
    if @trip.update(trip_params)
      render json: TripSerializer.new(@trip), status: :ok
    else
      error_resp = {
        error: @trip.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    if @trip.destroy
      render json: { data: "Trip destroyed!!" }, status: :ok
    else
      error_resp = {
        error: "Trip not found!!!"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :name)
  end

end

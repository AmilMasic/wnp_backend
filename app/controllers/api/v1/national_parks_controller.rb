class Api::V1::NationalParksController < ApplicationController

  def index
    national_parks = NationalPark.all
    render json: NationalParkSerializer.new(national_parks)
  end

  def create
    national_park = NationalPark.create(national_park_params)
    if national_park.save
      render json: NationalParkSerializer.new(national_park), status: :accepted
    else
      render json: {errors: national_park.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def national_park_params
    params.require(:national_park).permit(:name, :established, :description, :image_url, :country_id)
  end
end

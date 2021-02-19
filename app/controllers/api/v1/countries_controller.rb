class Api::V1::CountriesController < ApplicationController
  def index
    countries = Country.all
    render json: countries
  end

  def create
    country = Country.create(country_params)
    if country.save
      render json: country, status: :accepted
    else
      render json: {errors: country.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def country_params
    params.require(:country).permit(:name, :language, :continent)
  end

end

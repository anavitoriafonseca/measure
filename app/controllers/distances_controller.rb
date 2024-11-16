require 'httparty'

class DistancesController < ApplicationController
  def index
    @distances = Distance.all
  end

  def show
    @distance = Distance.find(params[:id])
  end

  def new
    @distance = Distance.new
  end

  def get_geoCode(address)
    # the suggested api is returning blocked access most of the time, so I took the liberty of looking for a library that does geolocation, but the integration is here in case change the search method
    address =address.gsub(",", "+").gsub(" ", "+")
    response = HTTParty.get("https://nominatim.openstreetmap.org/search?addressdetails=1&q=#{address}&format=jsonv2&limit=1")
    responseJson = JSON.parse(response.body)
    return responseJson
  end

  def create
    to_address = Address.find_by(address: params[:distance][:to])
    if to_address.blank?
      # geoCodeTo = get_geoCode(params[:distance][:to])
      to_address = Address.new(address: params[:distance][:to])
      to_address.save
    end

    from_address = Address.find_by(address: params[:distance][:from])
    if from_address.blank?
      # geoCodeTo = get_geoCode(params[:distance][:to])
      from_address = Address.new(address: params[:distance][:from])
      from_address.save
    end

    distance = to_address.distance_to(from_address)

    @distance = Distance.new(distance: distance, to_address_id: to_address.id, from_address_id: from_address.id)

    if @distance.save
      redirect_to @distance
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def distance_params
      params.expect(distance: [ :distance, to_address_attributes: [:adress, :lat, :log], from_address_attributes: [:adress, :lat, :log]])
    end

end

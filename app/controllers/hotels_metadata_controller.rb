class HotelsMetadataController < ApplicationController
  def index
    @hotels = HotelMetadata.all
    render json: @hotels
  end

  def create
    hotel = params['hotel']
    @hotel = HotelMetadata.new do |h|
      h.Name = hotel['Name']
      h.City = hotel['City']
      h.Country = hotel['Country']
      h.Category = hotel['Category']
    end

    @hotel.save
  end

  def delete
    hotel = params['hotel']
    @hotel = HotelMetadata.find_by(
      :Name => hotel['Name']
      :City => hotel['City']
      :Country => hotel['Country']
      :Category => hotel['Category']
    )

    if !@hotel.nil?
      HotelMetadata.destroy(@hotel.id)
    end
  end

  def update
    hotel = params['hotel']
    @hotel = HotelMetadata.find_by(
      :Name => hotel['Name'],
      :City => hotel['City'],
      :Country => hotel['Country'],
      :Category => hotel['Category']
    )

    if !@hotel.nil?
      HotelMetadata.update(@hotel.id, params['update_hotel'])
    end
  end
end

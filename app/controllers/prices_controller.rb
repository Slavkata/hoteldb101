class PricesController < ApplicationController
  def index
    @prices = Price.all
    render json: @prices
  end

  def create
    price = params['price']
    @price = Price.new do |p|
      p.Price = price['Price']
      p.Room_id = price['Room_id']
    end

    @price.save
  end

  def delete
    price = params['price']
    @price = Price.find_by(:Price => price['Price'], :Room_id => price['Room_id'])

    if !@price.nil?
      Price.destroy(@price.id)
    end
  end

  def update
    price = params['price']
    @price = Price.find_by(:Price => price['Price'], :Room_id => price['Room_id'])

    if !@price.nil?
      Price.update(@price.id, params['update_price'])
    end
  end
end

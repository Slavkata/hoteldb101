class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all
    render json: @promotions
  end

  def create
    promotion = params['promotion']
    @promotion = Promotion.new do |p|
      p.Begin_date = promotion['Begin_date']
      p.End_date = promotion['End_date']
      p.Valid_for = promotion['Valid_for']
    end

    @promotion.save
  end

  def delete
    promotion = params['promotion']
    @promotion = Promotion.find_by(
      :Begin_date => promotion['Begin_date'],
      :End_date => promotion['End_date'],
      :Valid_for => promotion['Valid_for']
    )

    if !@promotion.nil?
      Promotion.destroy(@promotion.id)
    end
  end

  def update
    promotion = params['promotion']
    @promotion = Promotion.find_by(
      :Begin_date => promotion['Begin_date'],
      :End_date => promotion['End_date'],
      :Valid_for => promotion['Valid_for']
    )

    if !@promotion.nil?
      Promotion.update(@promotion.id, params['update_promotion'])
    end
  end
end

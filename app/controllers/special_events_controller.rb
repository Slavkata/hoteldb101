class SpecialEventsController < ApplicationController
  def index
    @sevent = SpecialEvent.all
    render json: @sevent
  end

  def create
    sevent = params['sevent']
    @sevent = SpecialEvent.new do |s|
      s.Name = sevent['Name']
      s.Begin_date = sevent['Begin_date']
      s.End_date = sevent['End_date']
    end

    @sevent.save
  end

  def delete
    sevent = params['sevent']
    @sevent = SpecialEvent.find_by(
      :Name => sevent['Name']
      :Begin_date => sevent['Begin_date']
      :End_date => sevent['End_date']
    )

    if !@sevent.nil?
      SpecialEvent.delete(@sevent.id)
    end
  end

  def update
    sevent = params['sevent']
    @sevent = SpecialEvent.find_by(
      :Name => sevent['Name']
      :Begin_date => sevent['Begin_date']
      :End_date => sevent['End_date']
    )

    if !@sevent.nil?
      SpecialEvent.update(@sevent.id, params['update_sevent'])
    end
  end
end

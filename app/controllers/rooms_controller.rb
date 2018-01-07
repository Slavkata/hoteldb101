class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render json: @rooms
  end

  def create
    room = params['room']
    @room = Room.new do |r|
      r.Size = room['Size']
      r.Beds_count = room['Beds_count']
      r.Bathrooms_count = room['Bathrooms_count']
      r.Has_kitchen = room['Has_kitchen']
      r.Has_terace = room['Has_terace']
      r.Nice_view = room['Nice_view']
      r.Room_type = room['Room_type']
    end
    @room.save
  end

  def delete
    room = params['room']

    @room = Room.find_by(:Size => room['Size'],
       :Beds_count => room['Beds_count'],
       :Bathrooms_count => room['Bathrooms_count'],
       :Has_kitchen => room['Has_kitchen'],
       :Has_terace => room['Has_terace'],
       :Nice_view => room['Nice_view'],
       :Room_type => room['Room_type'])

    if !@room.nil?
      Room.destroy(@room.id)
    end
  end

  def update
    room = params['room']
    @room = Room.find_by(:Size => room['Size'],
       :Beds_count => room['Beds_count'],
       :Bathrooms_count => room['Bathrooms_count'],
       :Has_kitchen => room['Has_kitchen'],
       :Has_terace => room['Has_terace'],
       :Nice_view => room['Nice_view'],
       :Room_type => room['Room_type'])

    if !@room.nil?
      Room.update(@room.id, params['update_room'])
    end
  end
end

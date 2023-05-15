class RoomsController < ApplicationController

  def inderx
  end

  def new
    @room = Room.new #チャットルームの新規作成
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end

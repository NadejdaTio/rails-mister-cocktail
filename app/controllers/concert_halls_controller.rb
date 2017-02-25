class ConcertHallsController < ApplicationController
  before_action :set_hall, only: [:show, :edit, :update, :destroy]

  def index
    @concert_halls = ConcertHall.all
  end

  def show
  end

  def new
    @concert_hall = ConcertHall.new
  end

  def create
    @concert_hall = ConcertHall.new(concert_hall_params)
    @concert_hall.save
    if @concert_hall.save
      redirect_to concert_hall_path(@concert_hall)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @concert_hall.update(concert_hall_params)
    redirect_to concert_hall_path(@concert_hall)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hall
      @concert_hall = ConcertHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concert_hall_params
      params.require(:concert_hall).permit(:name, :address)
    end
end

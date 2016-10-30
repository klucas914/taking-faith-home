class ReadingsController < ApplicationController
  skip_before_action :authorize, only: [:index, :share, :read, :talk, :pray, :bless]

  def index
    @readings = Reading.all
  end

  def show
  	@reading = Reading.find(params[:id])
  end

  def new
    @reading = Reading.new
  end

  def edit
    @reading = Reading.find(params[:id])
  end

  def create
    @reading = Reading.new(reading_params)

    if @reading.save
      redirect_to @reading
    else
      render 'new'
    end
  end

  def update
    @reading = Reading.find(params[:id])

    if @reading.update(reading_params)
      redirect_to @reading
    else
      render 'edit'
    end
  end

  def share
  end

  def read
    @reading = Reading.find(params[:id])
  end

  def pray
    @reading = Reading.find(params[:id])
  end

  def bless
    @reading = Reading.find(params[:id])
  end

  def talk
    @reading = Reading.find(params[:id])
  end

  def destroy
    @reading = Reading.find(params[:id])
    @reading.destroy

    redirect_to readings_path
  end

  private
  def reading_params
    params.require(:reading).permit(:date, :week, :title, :verse, :scripture, :discuss, :prayer, :blessing)
  end
end

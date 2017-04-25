class MusiciansController < ApplicationController
  before_action :set_musician, only: [:show, :edit, :update, :destroy]

  def index
    @musicians = Musician.all
  end

  def show
  end

  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.new(musician_params)
    if @musician.save
      flash[:success] = 'Musician Created!'
      redirect_to musician_path(@musician)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @musician.update(musician_params)
      flash[:success] = 'Musician Updated!'
      redirect_to musician_path(@musician)
    else
      render :new
    end
  end

  def destroy
    @musician.destroy
    flash[:success] = 'Musician Deleted!'
    redirect_to musicians_path
  end

private
  def set_musician
    @musician = Musician.find(params[:id])
  end

  def musician_params
    params.require(:musician).permit(:name, :albums, :comments)
  end
end

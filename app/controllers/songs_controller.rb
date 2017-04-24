class SongsController < ApplicationController
  before_action :set_song, only[:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:success] = 'Song Created!'
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      flash[:success] = 'Song Updated!'
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    flash[:success] = 'Song Deleted!'
    redirect_to :root
  end

private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    parms.require(:song).permit(:title, :musician, :comments)
  end

end

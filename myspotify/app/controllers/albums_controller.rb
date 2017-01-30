class AlbumsController < ApplicationController

  before_action :get_album, except: [:index]

  def index
    @albums = Album.published.order(views_count: :desc).all
  end

  def show
    @albums.new_visit
  end

  private
    def get_album
      @albums = Album.published.find(params[:id])
    end
end

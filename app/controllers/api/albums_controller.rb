class Api::AlbumsController < Api::ApiController

  def index
    @albums = Album.all
    render json: {albums: @albums}
  end

end

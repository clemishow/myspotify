class Api::AlbumsController < Api::ApiController

  def index
    @albums = Album.all.order('views_count DESC')
    render json: {albums: @albums}
  end

end

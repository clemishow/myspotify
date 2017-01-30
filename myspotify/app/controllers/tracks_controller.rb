class TracksController < ApplicationController

  def index
    # @@tracks = Track.all Variable global
    @tracks = Track.all # Variable vue
    # tracks = Track.all Variable controller
  end

end

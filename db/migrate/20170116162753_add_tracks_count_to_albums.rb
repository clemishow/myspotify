class AddTracksCountToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :tracks_count, :int
  end
end

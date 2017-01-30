3.times do |a|
  puts "Creating album #{a}"
  album = Album.create({title: "Album number #{a}", released_at: Time.zone.now, views_count: 0})

  12.times do |i|
    puts "Creating Track number #{i}"
    album.tracks.create({title: "Awesome track #{i}"})
  end
end

3.times do |a|
  puts "Creating album #{a}"
  album = Album.create({title: "Album number #{a}", released_at: nil})

  12.times do |i|
    puts "Creating Track number #{i}"
    album.tracks.create({title: "Awesome track #{i}"})
  end
end
